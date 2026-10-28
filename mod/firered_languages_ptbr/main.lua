-- FireRed Languages: safe registry smoke test for the Gen3 mod API.
-- This does not override ROM dialogue; those keys must be verified first.
return function(mod)
  mod.content.text:register("FIRED_LANG_PTBR_TEST", "Olá, Treinador!")
  mod.log:info("FireRed Languages PT-BR registry smoke test registered")
end
