require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local crates = require("crates")
local telescope_builtin = require('telescope.builtin')

map("n", ",ct", crates.toggle, { desc = "Toggle crate" })
map("n", ",cr", crates.reload, { desc = "Reload crate"})

map("n", ",cv", crates.show_versions_popup, { desc = "Show crate versions" })
map("n", ",cf", crates.show_features_popup, { desc = "Show crate features" })
map("n", ",cd", crates.show_dependencies_popup, { desc = "Show crate dependencies" })

map("n", ",cu", crates.update_crate, { desc = "Update crate" })
map("v", ",cu", crates.update_crates, { desc = "Update crates" })
map("n", ",ca", crates.update_all_crates, { desc = "Update all crates" })
map("n", ",cU", crates.upgrade_crate, { desc = "Upgrade crate" })
map("v", ",cU", crates.upgrade_crates, { desc = "Upgrade crates" })
map("n", ",cA", crates.upgrade_all_crates, { desc = "Upgrade all crates" })

map("n", ",cx", crates.expand_plain_crate_to_inline_table, {})
map("n", ",cX", crates.extract_crate_into_table, {})

map("n", ",cH", crates.open_homepage, { desc = "Open crate homepage" })
map("n", ",cR", crates.open_repository, { desc = "Open crate repository" })
map("n", ",cD", crates.open_documentation, { desc = "Open crate documentation" })
map("n", ",cC", crates.open_crates_io, { desc = "Open crates.io" })
map("n", ",cL", crates.open_lib_rs, { desc = "Open lib.rs" })

map("n", ",ld", telescope_builtin.lsp_document_symbols, { desc = "LSP document symbols" })
map("n", ",lw", telescope_builtin.lsp_workspace_symbols, { desc = "LSP workspace symbols" })

map("n", ",gc", telescope_builtin.git_commits, { desc = "Git commits" })
map("n", ",gb", telescope_builtin.git_branches, { desc = "Git branches" })

map("n", ",w", ":w<CR>")
