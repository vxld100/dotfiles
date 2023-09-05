require("luasnip.loaders.from_snipmate").lazy_load({
	paths = "~/.config/nvim/snippets",
	exclude = { "all"} -- Excludes snippets that are available in every language, which are mostly licenses.
})

