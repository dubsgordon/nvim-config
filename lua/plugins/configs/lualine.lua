local _ok, lualine = pcall(require, "lualine")
local _theme, theme = pcall(require, "theme")

if not _ok then
    return
end

lualine.setup {
    options = {
        icons_enabled = true,
        theme = theme.theme_name,
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = true
    },
    -- Autosession plugin integration
    sections = {lualine_c = {require('auto-session-library').current_session_name}}
}