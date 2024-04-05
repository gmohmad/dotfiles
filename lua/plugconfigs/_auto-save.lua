require('auto-save').setup{
	execution_message = {
		enabled = false,
	},
	trigger_events = {
		immediate_save = { "BufLeave", "FocusLost", "InsertLeave", "TextChanged" },
		defer_save = { },
	}
}
