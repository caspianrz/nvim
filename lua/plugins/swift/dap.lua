local function find_lldb_dap()
	-- If you know the path to the lldb-dap binary change the line below.
	-- return "/path/to/lldb-dap"

	-- macOS: Try lldb-dap with xcrun.
	local xcrun_result = vim.system({ "xcrun", "--find", "lldb-dap" }, { text = true }):wait()
	if xcrun_result.code == 0 then
		local xcrun_dap_path = vim.fn.trim(xcrun_result.stdout)
		if vim.fn.executable(xcrun_dap_path) then
			return xcrun_dap_path
		end
	end

	-- Fallback the lldb-dap in the ${PATH} environment.
	if vim.fn.executable("lldb-dap") == 1 then
		return "lldb-dap"
	end

	vim.notify("lldb-dap not found, add it to your ${PATH}", vim.log.levels.WARN)
	return ""
end

return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")

			vim.api.nvim_set_hl(0, "DapStopped", {
				default = true,
				link = "Visual",
			})

			vim.fn.sign_define("DapStopped", {
				linehl = "DapStopped",
				text = "▶",
			})

			dap.adapters["lldb-dap"] = {
				type = "executable",
				name = "lldb-dap",
				command = find_lldb_dap(),
			}

			dap.configurations.swift = {
				{
					name = "Launch",
					type = "lldb-dap",
					request = "launch",
					program = function()
						return require("dap.utils").pick_file({
							executables = true,
						})
					end,
					cwd = "${workspaceFolder}",
				},
				{
					name = "Launch with arguments",
					type = "lldb-dap",
					request = "launch",
					program = function()
						return require("dap.utils").pick_file({
							executables = true,
						})
					end,
					cwd = "${workspaceFolder}",
					args = function()
						local args = vim.fn.input("Arguments: ")
						return require("dap.utils").splitstr(args)
					end,
				},
				{
					name = "Attach",
					type = "lldb-dap",
					request = "attach",
					pid = function()
						return require("dap.utils").pick_process()
					end,
				},
			}
		end,
	},
}
