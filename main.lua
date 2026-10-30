-- Diagnostic: two existing FireRed VM text keys, no hooks or events.
-- These are real labels from the Gen 3 FireRed script fixture.
return function(mod)
  mod.content.text:override("Text_BootedUpPC", "TESTE PTBR 03: PC LIGADO!")
  mod.content.text:override("Text_AccessWhichPC", "TESTE PTBR 03: QUAL PC?")
  mod.log:info("FireRed Languages diagnostic 0.3.0: two PC overrides requested")
end
