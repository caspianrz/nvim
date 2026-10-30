local signs = {
	DapBreakpoint = {
		text = "●",
		texthl = "DiagnosticError",
		linehl = "",
	},
	DapBreakpointCondition = {
		text = "◆",
		texthl = "DiagnosticWarn",
		linehl = "",
	},
	DapLogPoint = {
		text = "◉",
		texthl = "DiagnosticInfo",
		linehl = "",
	},
	DapStopped = {
		text = "▶",
		texthl = "DiagnosticOk",
		linehl = "DapStopped",
	},
}

return {
	{
		"mfussenegger/nvim-dap",
		keys = {
			{ "<leader>db", function() require("dap").toggle_breakpoint() end },
			{ "<leader>dc", function() require("dap").continue() end },
			{ "<leader>di", function() require("dap").step_into() end },
			{ "<leader>do", function() require("dap").step_over() end },
			{ "<leader>dt", function() require("dap").terminate() end },
		},
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		config = function(_, opts)
			local dap = require("dap")
			local dapui = require("dapui")
			local new_opts = opts

			for name, sign in pairs(signs) do
				vim.fn.sign_define(name, sign)
			end

			vim.api.nvim_set_hl(0, "DapStopped", {
				default = true,
				link = "Visual",
			})

			new_opts = vim.tbl_deep_extend("keep", new_opts, {
				icons = {
					expanded = "▾",
					collapsed = "▸",
					current_frame = "►",
				},
				controls = {
					icons = {
						pause = "⏸",
						play = "▶",
						step_into = "↓",
						step_over = "→",
						step_out = "↑",
						step_back = "←",
						run_last = "↺",
						terminate = "□",
						disconnect = "×",
					},
				},
			})
			dapui.setup(new_opts)
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open({})
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close({})
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close({})
			end
		end
	},
}
