return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "                      .-.",
        "         heehee      /aa \\_",
        "                   __\\-  / )                 .-.",
        "         .-.      (__/    /        haha    _/oo \\",
        "       _/ ..\\       /     \\               ( \\v  /__",
        "      ( \\  u/__    /       \\__             \\/   ___)",
        "       \\    \\__)   \\_.-._._   )  .-.       /     \\",
        "       /     \\             `-`  / ee\\_    /       \\_",
        "    __/       \\               __\\  o/ )   \\_.-.__   )",
        "   (   _._.-._/     hoho     (___   \\/           '-'",
        "jgs '-'                        /     \\",
        "                             _/       \\    teehee",
        "                            (   __.-._/",
      }
      return opts
    end,
  },
}
