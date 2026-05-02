local options = {
    formatters_by_ft = {
        gdscript = { "gdscript-formatter" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        lua = { "stylua" },
    },

    formatters = {
        -- C & C++
        ["clang-format"] = {
            prepend_args = {
                "-style={ \
                        IndentWidth: 4, \
                        TabWidth: 4, \
                        UseTab: Never, \
                        AccessModifierOffset: 0, \
                        IndentAccessModifiers: true, \
                        PackConstructorInitializers: Never}",
            },
        },
        -- GDscript
        ["gdscript-formatter"] = {
            command = "gdscript-formatter",
            args = { "$FILENAME" },
            stdin = false,
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

require("conform").setup(options)
