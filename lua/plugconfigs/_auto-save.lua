require('auto-save').setup{
	trigger_events = {
		immediate_save = { "BufLeave", "FocusLost", "InsertLeave", "TextChanged" },
		defer_save = { },
	}
}
