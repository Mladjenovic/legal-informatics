([pen27-defeasibly-dot] of derived-attribute-rule
   (pos-name pen27-defeasibly-dot-gen548)
   (depends-on declare max_years_in_imprisonment zk_151b_prinudna_sterilizacija max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen27] ) ) ) ?gen490 <- ( max_years_in_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pen27 $? ) ) ( test ( eq ( class ?gen490 ) max_years_in_imprisonment ) ) ( not ( and ?gen497 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( positive ?gen496 & : ( >= ?gen496 1 ) ) ) ?gen490 <- ( max_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen492 & : ( not ( member$ pen27 $?gen492 ) ) ) ) ) ) => ?gen490 <- ( max_years_in_imprisonment ( positive 0 ) )"))

([pen27-defeasibly] of derived-attribute-rule
   (pos-name pen27-defeasibly-gen550)
   (depends-on declare zk_151b_prinudna_sterilizacija max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen27] ) ) ) ?gen497 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( positive ?gen496 & : ( >= ?gen496 1 ) ) ) ?gen490 <- ( max_years_in_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen492 & : ( not ( member$ pen27 $?gen492 ) ) ) ) ( test ( eq ( class ?gen490 ) max_years_in_imprisonment ) ) => ?gen490 <- ( max_years_in_imprisonment ( positive 1 ) ( positive-derivator pen27 ?gen497 ) )"))

([pen27-overruled-dot] of derived-attribute-rule
   (pos-name pen27-overruled-dot-gen552)
   (depends-on declare max_years_in_imprisonment zk_151b_prinudna_sterilizacija max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen27] ) ) ) ?gen490 <- ( max_years_in_imprisonment ( value 5 ) ( negative-support $?gen493 ) ( negative-overruled $?gen494 & : ( subseq-pos ( create$ pen27-overruled $?gen493 $$$ $?gen494 ) ) ) ) ( test ( eq ( class ?gen490 ) max_years_in_imprisonment ) ) ( not ( and ?gen497 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( positive ?gen496 & : ( >= ?gen496 1 ) ) ) ?gen490 <- ( max_years_in_imprisonment ( positive-defeated $?gen492 & : ( not ( member$ pen27 $?gen492 ) ) ) ) ) ) => ( calc ( bind $?gen495 ( delete-member$ $?gen494 ( create$ pen27-overruled $?gen493 ) ) ) ) ?gen490 <- ( max_years_in_imprisonment ( negative-overruled $?gen495 ) )"))

([pen27-overruled] of derived-attribute-rule
   (pos-name pen27-overruled-gen554)
   (depends-on declare zk_151b_prinudna_sterilizacija max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen27] ) ) ) ?gen497 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( positive ?gen496 & : ( >= ?gen496 1 ) ) ) ?gen490 <- ( max_years_in_imprisonment ( value 5 ) ( negative-support $?gen493 ) ( negative-overruled $?gen494 & : ( not ( subseq-pos ( create$ pen27-overruled $?gen493 $$$ $?gen494 ) ) ) ) ( positive-defeated $?gen492 & : ( not ( member$ pen27 $?gen492 ) ) ) ) ( test ( eq ( class ?gen490 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen495 ( create$ pen27-overruled $?gen493 $?gen494 ) ) ) ?gen490 <- ( max_years_in_imprisonment ( negative-overruled $?gen495 ) )"))

([pen27-support] of derived-attribute-rule
   (pos-name pen27-support-gen556)
   (depends-on declare zk_151b_prinudna_sterilizacija max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen27] ) ) ) ?gen489 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ) ?gen490 <- ( max_years_in_imprisonment ( value 5 ) ( positive-support $?gen492 & : ( not ( subseq-pos ( create$ pen27 ?gen489 $$$ $?gen492 ) ) ) ) ) ( test ( eq ( class ?gen490 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen495 ( create$ pen27 ?gen489 $?gen492 ) ) ) ?gen490 <- ( max_years_in_imprisonment ( positive-support $?gen495 ) )"))

([pen26-defeasibly-dot] of derived-attribute-rule
   (pos-name pen26-defeasibly-dot-gen558)
   (depends-on declare min_months_in_imprisonment zk_151b_prinudna_sterilizacija min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen26] ) ) ) ?gen481 <- ( min_months_in_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen26 $? ) ) ( test ( eq ( class ?gen481 ) min_months_in_imprisonment ) ) ( not ( and ?gen488 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( positive ?gen487 & : ( >= ?gen487 1 ) ) ) ?gen481 <- ( min_months_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen483 & : ( not ( member$ pen26 $?gen483 ) ) ) ) ) ) => ?gen481 <- ( min_months_in_imprisonment ( positive 0 ) )"))

([pen26-defeasibly] of derived-attribute-rule
   (pos-name pen26-defeasibly-gen560)
   (depends-on declare zk_151b_prinudna_sterilizacija min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen26] ) ) ) ?gen488 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( positive ?gen487 & : ( >= ?gen487 1 ) ) ) ?gen481 <- ( min_months_in_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen483 & : ( not ( member$ pen26 $?gen483 ) ) ) ) ( test ( eq ( class ?gen481 ) min_months_in_imprisonment ) ) => ?gen481 <- ( min_months_in_imprisonment ( positive 1 ) ( positive-derivator pen26 ?gen488 ) )"))

([pen26-overruled-dot] of derived-attribute-rule
   (pos-name pen26-overruled-dot-gen562)
   (depends-on declare min_months_in_imprisonment zk_151b_prinudna_sterilizacija min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen26] ) ) ) ?gen481 <- ( min_months_in_imprisonment ( value 3 ) ( negative-support $?gen484 ) ( negative-overruled $?gen485 & : ( subseq-pos ( create$ pen26-overruled $?gen484 $$$ $?gen485 ) ) ) ) ( test ( eq ( class ?gen481 ) min_months_in_imprisonment ) ) ( not ( and ?gen488 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( positive ?gen487 & : ( >= ?gen487 1 ) ) ) ?gen481 <- ( min_months_in_imprisonment ( positive-defeated $?gen483 & : ( not ( member$ pen26 $?gen483 ) ) ) ) ) ) => ( calc ( bind $?gen486 ( delete-member$ $?gen485 ( create$ pen26-overruled $?gen484 ) ) ) ) ?gen481 <- ( min_months_in_imprisonment ( negative-overruled $?gen486 ) )"))

([pen26-overruled] of derived-attribute-rule
   (pos-name pen26-overruled-gen564)
   (depends-on declare zk_151b_prinudna_sterilizacija min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen26] ) ) ) ?gen488 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( positive ?gen487 & : ( >= ?gen487 1 ) ) ) ?gen481 <- ( min_months_in_imprisonment ( value 3 ) ( negative-support $?gen484 ) ( negative-overruled $?gen485 & : ( not ( subseq-pos ( create$ pen26-overruled $?gen484 $$$ $?gen485 ) ) ) ) ( positive-defeated $?gen483 & : ( not ( member$ pen26 $?gen483 ) ) ) ) ( test ( eq ( class ?gen481 ) min_months_in_imprisonment ) ) => ( calc ( bind $?gen486 ( create$ pen26-overruled $?gen484 $?gen485 ) ) ) ?gen481 <- ( min_months_in_imprisonment ( negative-overruled $?gen486 ) )"))

([pen26-support] of derived-attribute-rule
   (pos-name pen26-support-gen566)
   (depends-on declare zk_151b_prinudna_sterilizacija min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen26] ) ) ) ?gen480 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ) ?gen481 <- ( min_months_in_imprisonment ( value 3 ) ( positive-support $?gen483 & : ( not ( subseq-pos ( create$ pen26 ?gen480 $$$ $?gen483 ) ) ) ) ) ( test ( eq ( class ?gen481 ) min_months_in_imprisonment ) ) => ( calc ( bind $?gen486 ( create$ pen26 ?gen480 $?gen483 ) ) ) ?gen481 <- ( min_months_in_imprisonment ( positive-support $?gen486 ) )"))

([pen25-defeasibly-dot] of derived-attribute-rule
   (pos-name pen25-defeasibly-dot-gen568)
   (depends-on declare max_years_in_imprisonment zk_151a_sakacenje_zenskih_genitalija max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen25] ) ) ) ?gen472 <- ( max_years_in_imprisonment ( value 8 ) ( positive 1 ) ( positive-derivator pen25 $? ) ) ( test ( eq ( class ?gen472 ) max_years_in_imprisonment ) ) ( not ( and ?gen479 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( positive ?gen478 & : ( >= ?gen478 1 ) ) ) ?gen472 <- ( max_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen474 & : ( not ( member$ pen25 $?gen474 ) ) ) ) ) ) => ?gen472 <- ( max_years_in_imprisonment ( positive 0 ) )"))

([pen25-defeasibly] of derived-attribute-rule
   (pos-name pen25-defeasibly-gen570)
   (depends-on declare zk_151a_sakacenje_zenskih_genitalija max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen25] ) ) ) ?gen479 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( positive ?gen478 & : ( >= ?gen478 1 ) ) ) ?gen472 <- ( max_years_in_imprisonment ( value 8 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen474 & : ( not ( member$ pen25 $?gen474 ) ) ) ) ( test ( eq ( class ?gen472 ) max_years_in_imprisonment ) ) => ?gen472 <- ( max_years_in_imprisonment ( positive 1 ) ( positive-derivator pen25 ?gen479 ) )"))

([pen25-overruled-dot] of derived-attribute-rule
   (pos-name pen25-overruled-dot-gen572)
   (depends-on declare max_years_in_imprisonment zk_151a_sakacenje_zenskih_genitalija max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen25] ) ) ) ?gen472 <- ( max_years_in_imprisonment ( value 8 ) ( negative-support $?gen475 ) ( negative-overruled $?gen476 & : ( subseq-pos ( create$ pen25-overruled $?gen475 $$$ $?gen476 ) ) ) ) ( test ( eq ( class ?gen472 ) max_years_in_imprisonment ) ) ( not ( and ?gen479 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( positive ?gen478 & : ( >= ?gen478 1 ) ) ) ?gen472 <- ( max_years_in_imprisonment ( positive-defeated $?gen474 & : ( not ( member$ pen25 $?gen474 ) ) ) ) ) ) => ( calc ( bind $?gen477 ( delete-member$ $?gen476 ( create$ pen25-overruled $?gen475 ) ) ) ) ?gen472 <- ( max_years_in_imprisonment ( negative-overruled $?gen477 ) )"))

([pen25-overruled] of derived-attribute-rule
   (pos-name pen25-overruled-gen574)
   (depends-on declare zk_151a_sakacenje_zenskih_genitalija max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen25] ) ) ) ?gen479 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( positive ?gen478 & : ( >= ?gen478 1 ) ) ) ?gen472 <- ( max_years_in_imprisonment ( value 8 ) ( negative-support $?gen475 ) ( negative-overruled $?gen476 & : ( not ( subseq-pos ( create$ pen25-overruled $?gen475 $$$ $?gen476 ) ) ) ) ( positive-defeated $?gen474 & : ( not ( member$ pen25 $?gen474 ) ) ) ) ( test ( eq ( class ?gen472 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen477 ( create$ pen25-overruled $?gen475 $?gen476 ) ) ) ?gen472 <- ( max_years_in_imprisonment ( negative-overruled $?gen477 ) )"))

([pen25-support] of derived-attribute-rule
   (pos-name pen25-support-gen576)
   (depends-on declare zk_151a_sakacenje_zenskih_genitalija max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen25] ) ) ) ?gen471 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ) ?gen472 <- ( max_years_in_imprisonment ( value 8 ) ( positive-support $?gen474 & : ( not ( subseq-pos ( create$ pen25 ?gen471 $$$ $?gen474 ) ) ) ) ) ( test ( eq ( class ?gen472 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen477 ( create$ pen25 ?gen471 $?gen474 ) ) ) ?gen472 <- ( max_years_in_imprisonment ( positive-support $?gen477 ) )"))

([pen24-defeasibly-dot] of derived-attribute-rule
   (pos-name pen24-defeasibly-dot-gen578)
   (depends-on declare min_years_in_imprisonment zk_151a_sakacenje_zenskih_genitalija min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen24] ) ) ) ?gen463 <- ( min_years_in_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen24 $? ) ) ( test ( eq ( class ?gen463 ) min_years_in_imprisonment ) ) ( not ( and ?gen470 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( positive ?gen469 & : ( >= ?gen469 1 ) ) ) ?gen463 <- ( min_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen465 & : ( not ( member$ pen24 $?gen465 ) ) ) ) ) ) => ?gen463 <- ( min_years_in_imprisonment ( positive 0 ) )"))

([pen24-defeasibly] of derived-attribute-rule
   (pos-name pen24-defeasibly-gen580)
   (depends-on declare zk_151a_sakacenje_zenskih_genitalija min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen24] ) ) ) ?gen470 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( positive ?gen469 & : ( >= ?gen469 1 ) ) ) ?gen463 <- ( min_years_in_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen465 & : ( not ( member$ pen24 $?gen465 ) ) ) ) ( test ( eq ( class ?gen463 ) min_years_in_imprisonment ) ) => ?gen463 <- ( min_years_in_imprisonment ( positive 1 ) ( positive-derivator pen24 ?gen470 ) )"))

([pen24-overruled-dot] of derived-attribute-rule
   (pos-name pen24-overruled-dot-gen582)
   (depends-on declare min_years_in_imprisonment zk_151a_sakacenje_zenskih_genitalija min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen24] ) ) ) ?gen463 <- ( min_years_in_imprisonment ( value 1 ) ( negative-support $?gen466 ) ( negative-overruled $?gen467 & : ( subseq-pos ( create$ pen24-overruled $?gen466 $$$ $?gen467 ) ) ) ) ( test ( eq ( class ?gen463 ) min_years_in_imprisonment ) ) ( not ( and ?gen470 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( positive ?gen469 & : ( >= ?gen469 1 ) ) ) ?gen463 <- ( min_years_in_imprisonment ( positive-defeated $?gen465 & : ( not ( member$ pen24 $?gen465 ) ) ) ) ) ) => ( calc ( bind $?gen468 ( delete-member$ $?gen467 ( create$ pen24-overruled $?gen466 ) ) ) ) ?gen463 <- ( min_years_in_imprisonment ( negative-overruled $?gen468 ) )"))

([pen24-overruled] of derived-attribute-rule
   (pos-name pen24-overruled-gen584)
   (depends-on declare zk_151a_sakacenje_zenskih_genitalija min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen24] ) ) ) ?gen470 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( positive ?gen469 & : ( >= ?gen469 1 ) ) ) ?gen463 <- ( min_years_in_imprisonment ( value 1 ) ( negative-support $?gen466 ) ( negative-overruled $?gen467 & : ( not ( subseq-pos ( create$ pen24-overruled $?gen466 $$$ $?gen467 ) ) ) ) ( positive-defeated $?gen465 & : ( not ( member$ pen24 $?gen465 ) ) ) ) ( test ( eq ( class ?gen463 ) min_years_in_imprisonment ) ) => ( calc ( bind $?gen468 ( create$ pen24-overruled $?gen466 $?gen467 ) ) ) ?gen463 <- ( min_years_in_imprisonment ( negative-overruled $?gen468 ) )"))

([pen24-support] of derived-attribute-rule
   (pos-name pen24-support-gen586)
   (depends-on declare zk_151a_sakacenje_zenskih_genitalija min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen24] ) ) ) ?gen462 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ) ?gen463 <- ( min_years_in_imprisonment ( value 1 ) ( positive-support $?gen465 & : ( not ( subseq-pos ( create$ pen24 ?gen462 $$$ $?gen465 ) ) ) ) ) ( test ( eq ( class ?gen463 ) min_years_in_imprisonment ) ) => ( calc ( bind $?gen468 ( create$ pen24 ?gen462 $?gen465 ) ) ) ?gen463 <- ( min_years_in_imprisonment ( positive-support $?gen468 ) )"))

([pen23-defeasibly-dot] of derived-attribute-rule
   (pos-name pen23-defeasibly-dot-gen588)
   (depends-on declare max_years_in_imprisonment zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen23] ) ) ) ?gen454 <- ( max_years_in_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pen23 $? ) ) ( test ( eq ( class ?gen454 ) max_years_in_imprisonment ) ) ( not ( and ?gen461 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen460 & : ( >= ?gen460 1 ) ) ) ?gen454 <- ( max_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen456 & : ( not ( member$ pen23 $?gen456 ) ) ) ) ) ) => ?gen454 <- ( max_years_in_imprisonment ( positive 0 ) )"))

([pen23-defeasibly] of derived-attribute-rule
   (pos-name pen23-defeasibly-gen590)
   (depends-on declare zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen23] ) ) ) ?gen461 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen460 & : ( >= ?gen460 1 ) ) ) ?gen454 <- ( max_years_in_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen456 & : ( not ( member$ pen23 $?gen456 ) ) ) ) ( test ( eq ( class ?gen454 ) max_years_in_imprisonment ) ) => ?gen454 <- ( max_years_in_imprisonment ( positive 1 ) ( positive-derivator pen23 ?gen461 ) )"))

([pen23-overruled-dot] of derived-attribute-rule
   (pos-name pen23-overruled-dot-gen592)
   (depends-on declare max_years_in_imprisonment zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen23] ) ) ) ?gen454 <- ( max_years_in_imprisonment ( value 5 ) ( negative-support $?gen457 ) ( negative-overruled $?gen458 & : ( subseq-pos ( create$ pen23-overruled $?gen457 $$$ $?gen458 ) ) ) ) ( test ( eq ( class ?gen454 ) max_years_in_imprisonment ) ) ( not ( and ?gen461 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen460 & : ( >= ?gen460 1 ) ) ) ?gen454 <- ( max_years_in_imprisonment ( positive-defeated $?gen456 & : ( not ( member$ pen23 $?gen456 ) ) ) ) ) ) => ( calc ( bind $?gen459 ( delete-member$ $?gen458 ( create$ pen23-overruled $?gen457 ) ) ) ) ?gen454 <- ( max_years_in_imprisonment ( negative-overruled $?gen459 ) )"))

([pen23-overruled] of derived-attribute-rule
   (pos-name pen23-overruled-gen594)
   (depends-on declare zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen23] ) ) ) ?gen461 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen460 & : ( >= ?gen460 1 ) ) ) ?gen454 <- ( max_years_in_imprisonment ( value 5 ) ( negative-support $?gen457 ) ( negative-overruled $?gen458 & : ( not ( subseq-pos ( create$ pen23-overruled $?gen457 $$$ $?gen458 ) ) ) ) ( positive-defeated $?gen456 & : ( not ( member$ pen23 $?gen456 ) ) ) ) ( test ( eq ( class ?gen454 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen459 ( create$ pen23-overruled $?gen457 $?gen458 ) ) ) ?gen454 <- ( max_years_in_imprisonment ( negative-overruled $?gen459 ) )"))

([pen23-support] of derived-attribute-rule
   (pos-name pen23-support-gen596)
   (depends-on declare zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen23] ) ) ) ?gen453 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ?gen454 <- ( max_years_in_imprisonment ( value 5 ) ( positive-support $?gen456 & : ( not ( subseq-pos ( create$ pen23 ?gen453 $$$ $?gen456 ) ) ) ) ) ( test ( eq ( class ?gen454 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen459 ( create$ pen23 ?gen453 $?gen456 ) ) ) ?gen454 <- ( max_years_in_imprisonment ( positive-support $?gen459 ) )"))

([pen22-defeasibly-dot] of derived-attribute-rule
   (pos-name pen22-defeasibly-dot-gen598)
   (depends-on declare min_months_in_imprisonment zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen22] ) ) ) ?gen445 <- ( min_months_in_imprisonment ( value 6 ) ( positive 1 ) ( positive-derivator pen22 $? ) ) ( test ( eq ( class ?gen445 ) min_months_in_imprisonment ) ) ( not ( and ?gen452 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen451 & : ( >= ?gen451 1 ) ) ) ?gen445 <- ( min_months_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen447 & : ( not ( member$ pen22 $?gen447 ) ) ) ) ) ) => ?gen445 <- ( min_months_in_imprisonment ( positive 0 ) )"))

([pen22-defeasibly] of derived-attribute-rule
   (pos-name pen22-defeasibly-gen600)
   (depends-on declare zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen22] ) ) ) ?gen452 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen451 & : ( >= ?gen451 1 ) ) ) ?gen445 <- ( min_months_in_imprisonment ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen447 & : ( not ( member$ pen22 $?gen447 ) ) ) ) ( test ( eq ( class ?gen445 ) min_months_in_imprisonment ) ) => ?gen445 <- ( min_months_in_imprisonment ( positive 1 ) ( positive-derivator pen22 ?gen452 ) )"))

([pen22-overruled-dot] of derived-attribute-rule
   (pos-name pen22-overruled-dot-gen602)
   (depends-on declare min_months_in_imprisonment zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen22] ) ) ) ?gen445 <- ( min_months_in_imprisonment ( value 6 ) ( negative-support $?gen448 ) ( negative-overruled $?gen449 & : ( subseq-pos ( create$ pen22-overruled $?gen448 $$$ $?gen449 ) ) ) ) ( test ( eq ( class ?gen445 ) min_months_in_imprisonment ) ) ( not ( and ?gen452 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen451 & : ( >= ?gen451 1 ) ) ) ?gen445 <- ( min_months_in_imprisonment ( positive-defeated $?gen447 & : ( not ( member$ pen22 $?gen447 ) ) ) ) ) ) => ( calc ( bind $?gen450 ( delete-member$ $?gen449 ( create$ pen22-overruled $?gen448 ) ) ) ) ?gen445 <- ( min_months_in_imprisonment ( negative-overruled $?gen450 ) )"))

([pen22-overruled] of derived-attribute-rule
   (pos-name pen22-overruled-gen604)
   (depends-on declare zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen22] ) ) ) ?gen452 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen451 & : ( >= ?gen451 1 ) ) ) ?gen445 <- ( min_months_in_imprisonment ( value 6 ) ( negative-support $?gen448 ) ( negative-overruled $?gen449 & : ( not ( subseq-pos ( create$ pen22-overruled $?gen448 $$$ $?gen449 ) ) ) ) ( positive-defeated $?gen447 & : ( not ( member$ pen22 $?gen447 ) ) ) ) ( test ( eq ( class ?gen445 ) min_months_in_imprisonment ) ) => ( calc ( bind $?gen450 ( create$ pen22-overruled $?gen448 $?gen449 ) ) ) ?gen445 <- ( min_months_in_imprisonment ( negative-overruled $?gen450 ) )"))

([pen22-support] of derived-attribute-rule
   (pos-name pen22-support-gen606)
   (depends-on declare zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen22] ) ) ) ?gen444 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ?gen445 <- ( min_months_in_imprisonment ( value 6 ) ( positive-support $?gen447 & : ( not ( subseq-pos ( create$ pen22 ?gen444 $$$ $?gen447 ) ) ) ) ) ( test ( eq ( class ?gen445 ) min_months_in_imprisonment ) ) => ( calc ( bind $?gen450 ( create$ pen22 ?gen444 $?gen447 ) ) ) ?gen445 <- ( min_months_in_imprisonment ( positive-support $?gen450 ) )"))

([pen21-defeasibly-dot] of derived-attribute-rule
   (pos-name pen21-defeasibly-dot-gen608)
   (depends-on declare max_years_in_imprisonment zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen21] ) ) ) ?gen436 <- ( max_years_in_imprisonment ( value 4 ) ( positive 1 ) ( positive-derivator pen21 $? ) ) ( test ( eq ( class ?gen436 ) max_years_in_imprisonment ) ) ( not ( and ?gen443 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( max_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen438 & : ( not ( member$ pen21 $?gen438 ) ) ) ) ) ) => ?gen436 <- ( max_years_in_imprisonment ( positive 0 ) )"))

([pen21-defeasibly] of derived-attribute-rule
   (pos-name pen21-defeasibly-gen610)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen21] ) ) ) ?gen443 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( max_years_in_imprisonment ( value 4 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen438 & : ( not ( member$ pen21 $?gen438 ) ) ) ) ( test ( eq ( class ?gen436 ) max_years_in_imprisonment ) ) => ?gen436 <- ( max_years_in_imprisonment ( positive 1 ) ( positive-derivator pen21 ?gen443 ) )"))

([pen21-overruled-dot] of derived-attribute-rule
   (pos-name pen21-overruled-dot-gen612)
   (depends-on declare max_years_in_imprisonment zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen21] ) ) ) ?gen436 <- ( max_years_in_imprisonment ( value 4 ) ( negative-support $?gen439 ) ( negative-overruled $?gen440 & : ( subseq-pos ( create$ pen21-overruled $?gen439 $$$ $?gen440 ) ) ) ) ( test ( eq ( class ?gen436 ) max_years_in_imprisonment ) ) ( not ( and ?gen443 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( max_years_in_imprisonment ( positive-defeated $?gen438 & : ( not ( member$ pen21 $?gen438 ) ) ) ) ) ) => ( calc ( bind $?gen441 ( delete-member$ $?gen440 ( create$ pen21-overruled $?gen439 ) ) ) ) ?gen436 <- ( max_years_in_imprisonment ( negative-overruled $?gen441 ) )"))

([pen21-overruled] of derived-attribute-rule
   (pos-name pen21-overruled-gen614)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen21] ) ) ) ?gen443 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( max_years_in_imprisonment ( value 4 ) ( negative-support $?gen439 ) ( negative-overruled $?gen440 & : ( not ( subseq-pos ( create$ pen21-overruled $?gen439 $$$ $?gen440 ) ) ) ) ( positive-defeated $?gen438 & : ( not ( member$ pen21 $?gen438 ) ) ) ) ( test ( eq ( class ?gen436 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen441 ( create$ pen21-overruled $?gen439 $?gen440 ) ) ) ?gen436 <- ( max_years_in_imprisonment ( negative-overruled $?gen441 ) )"))

([pen21-support] of derived-attribute-rule
   (pos-name pen21-support-gen616)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen21] ) ) ) ?gen435 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ?gen436 <- ( max_years_in_imprisonment ( value 4 ) ( positive-support $?gen438 & : ( not ( subseq-pos ( create$ pen21 ?gen435 $$$ $?gen438 ) ) ) ) ) ( test ( eq ( class ?gen436 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen441 ( create$ pen21 ?gen435 $?gen438 ) ) ) ?gen436 <- ( max_years_in_imprisonment ( positive-support $?gen441 ) )"))

([pen20-defeasibly-dot] of derived-attribute-rule
   (pos-name pen20-defeasibly-dot-gen618)
   (depends-on declare min_months_in_imprisonment zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen20] ) ) ) ?gen427 <- ( min_months_in_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen20 $? ) ) ( test ( eq ( class ?gen427 ) min_months_in_imprisonment ) ) ( not ( and ?gen434 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( min_months_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen429 & : ( not ( member$ pen20 $?gen429 ) ) ) ) ) ) => ?gen427 <- ( min_months_in_imprisonment ( positive 0 ) )"))

([pen20-defeasibly] of derived-attribute-rule
   (pos-name pen20-defeasibly-gen620)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen20] ) ) ) ?gen434 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( min_months_in_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen429 & : ( not ( member$ pen20 $?gen429 ) ) ) ) ( test ( eq ( class ?gen427 ) min_months_in_imprisonment ) ) => ?gen427 <- ( min_months_in_imprisonment ( positive 1 ) ( positive-derivator pen20 ?gen434 ) )"))

([pen20-overruled-dot] of derived-attribute-rule
   (pos-name pen20-overruled-dot-gen622)
   (depends-on declare min_months_in_imprisonment zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen20] ) ) ) ?gen427 <- ( min_months_in_imprisonment ( value 3 ) ( negative-support $?gen430 ) ( negative-overruled $?gen431 & : ( subseq-pos ( create$ pen20-overruled $?gen430 $$$ $?gen431 ) ) ) ) ( test ( eq ( class ?gen427 ) min_months_in_imprisonment ) ) ( not ( and ?gen434 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( min_months_in_imprisonment ( positive-defeated $?gen429 & : ( not ( member$ pen20 $?gen429 ) ) ) ) ) ) => ( calc ( bind $?gen432 ( delete-member$ $?gen431 ( create$ pen20-overruled $?gen430 ) ) ) ) ?gen427 <- ( min_months_in_imprisonment ( negative-overruled $?gen432 ) )"))

([pen20-overruled] of derived-attribute-rule
   (pos-name pen20-overruled-gen624)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen20] ) ) ) ?gen434 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( min_months_in_imprisonment ( value 3 ) ( negative-support $?gen430 ) ( negative-overruled $?gen431 & : ( not ( subseq-pos ( create$ pen20-overruled $?gen430 $$$ $?gen431 ) ) ) ) ( positive-defeated $?gen429 & : ( not ( member$ pen20 $?gen429 ) ) ) ) ( test ( eq ( class ?gen427 ) min_months_in_imprisonment ) ) => ( calc ( bind $?gen432 ( create$ pen20-overruled $?gen430 $?gen431 ) ) ) ?gen427 <- ( min_months_in_imprisonment ( negative-overruled $?gen432 ) )"))

([pen20-support] of derived-attribute-rule
   (pos-name pen20-support-gen626)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen20] ) ) ) ?gen426 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ?gen427 <- ( min_months_in_imprisonment ( value 3 ) ( positive-support $?gen429 & : ( not ( subseq-pos ( create$ pen20 ?gen426 $$$ $?gen429 ) ) ) ) ) ( test ( eq ( class ?gen427 ) min_months_in_imprisonment ) ) => ( calc ( bind $?gen432 ( create$ pen20 ?gen426 $?gen429 ) ) ) ?gen427 <- ( min_months_in_imprisonment ( positive-support $?gen432 ) )"))

([pen19-defeasibly-dot] of derived-attribute-rule
   (pos-name pen19-defeasibly-dot-gen628)
   (depends-on declare max_years_in_imprisonment zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen19] ) ) ) ?gen418 <- ( max_years_in_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen19 $? ) ) ( test ( eq ( class ?gen418 ) max_years_in_imprisonment ) ) ( not ( and ?gen425 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( max_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen420 & : ( not ( member$ pen19 $?gen420 ) ) ) ) ) ) => ?gen418 <- ( max_years_in_imprisonment ( positive 0 ) )"))

([pen19-defeasibly] of derived-attribute-rule
   (pos-name pen19-defeasibly-gen630)
   (depends-on declare zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen19] ) ) ) ?gen425 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( max_years_in_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen420 & : ( not ( member$ pen19 $?gen420 ) ) ) ) ( test ( eq ( class ?gen418 ) max_years_in_imprisonment ) ) => ?gen418 <- ( max_years_in_imprisonment ( positive 1 ) ( positive-derivator pen19 ?gen425 ) )"))

([pen19-overruled-dot] of derived-attribute-rule
   (pos-name pen19-overruled-dot-gen632)
   (depends-on declare max_years_in_imprisonment zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen19] ) ) ) ?gen418 <- ( max_years_in_imprisonment ( value 3 ) ( negative-support $?gen421 ) ( negative-overruled $?gen422 & : ( subseq-pos ( create$ pen19-overruled $?gen421 $$$ $?gen422 ) ) ) ) ( test ( eq ( class ?gen418 ) max_years_in_imprisonment ) ) ( not ( and ?gen425 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( max_years_in_imprisonment ( positive-defeated $?gen420 & : ( not ( member$ pen19 $?gen420 ) ) ) ) ) ) => ( calc ( bind $?gen423 ( delete-member$ $?gen422 ( create$ pen19-overruled $?gen421 ) ) ) ) ?gen418 <- ( max_years_in_imprisonment ( negative-overruled $?gen423 ) )"))

([pen19-overruled] of derived-attribute-rule
   (pos-name pen19-overruled-gen634)
   (depends-on declare zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen19] ) ) ) ?gen425 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( max_years_in_imprisonment ( value 3 ) ( negative-support $?gen421 ) ( negative-overruled $?gen422 & : ( not ( subseq-pos ( create$ pen19-overruled $?gen421 $$$ $?gen422 ) ) ) ) ( positive-defeated $?gen420 & : ( not ( member$ pen19 $?gen420 ) ) ) ) ( test ( eq ( class ?gen418 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen423 ( create$ pen19-overruled $?gen421 $?gen422 ) ) ) ?gen418 <- ( max_years_in_imprisonment ( negative-overruled $?gen423 ) )"))

([pen19-support] of derived-attribute-rule
   (pos-name pen19-support-gen636)
   (depends-on declare zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen19] ) ) ) ?gen417 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ?gen418 <- ( max_years_in_imprisonment ( value 3 ) ( positive-support $?gen420 & : ( not ( subseq-pos ( create$ pen19 ?gen417 $$$ $?gen420 ) ) ) ) ) ( test ( eq ( class ?gen418 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen423 ( create$ pen19 ?gen417 $?gen420 ) ) ) ?gen418 <- ( max_years_in_imprisonment ( positive-support $?gen423 ) )"))

([pen18-defeasibly-dot] of derived-attribute-rule
   (pos-name pen18-defeasibly-dot-gen638)
   (depends-on declare max_years_in_imprisonment zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen18] ) ) ) ?gen409 <- ( max_years_in_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen18 $? ) ) ( test ( eq ( class ?gen409 ) max_years_in_imprisonment ) ) ( not ( and ?gen416 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( max_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen411 & : ( not ( member$ pen18 $?gen411 ) ) ) ) ) ) => ?gen409 <- ( max_years_in_imprisonment ( positive 0 ) )"))

([pen18-defeasibly] of derived-attribute-rule
   (pos-name pen18-defeasibly-gen640)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen18] ) ) ) ?gen416 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( max_years_in_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen411 & : ( not ( member$ pen18 $?gen411 ) ) ) ) ( test ( eq ( class ?gen409 ) max_years_in_imprisonment ) ) => ?gen409 <- ( max_years_in_imprisonment ( positive 1 ) ( positive-derivator pen18 ?gen416 ) )"))

([pen18-overruled-dot] of derived-attribute-rule
   (pos-name pen18-overruled-dot-gen642)
   (depends-on declare max_years_in_imprisonment zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen18] ) ) ) ?gen409 <- ( max_years_in_imprisonment ( value 3 ) ( negative-support $?gen412 ) ( negative-overruled $?gen413 & : ( subseq-pos ( create$ pen18-overruled $?gen412 $$$ $?gen413 ) ) ) ) ( test ( eq ( class ?gen409 ) max_years_in_imprisonment ) ) ( not ( and ?gen416 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( max_years_in_imprisonment ( positive-defeated $?gen411 & : ( not ( member$ pen18 $?gen411 ) ) ) ) ) ) => ( calc ( bind $?gen414 ( delete-member$ $?gen413 ( create$ pen18-overruled $?gen412 ) ) ) ) ?gen409 <- ( max_years_in_imprisonment ( negative-overruled $?gen414 ) )"))

([pen18-overruled] of derived-attribute-rule
   (pos-name pen18-overruled-gen644)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen18] ) ) ) ?gen416 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( max_years_in_imprisonment ( value 3 ) ( negative-support $?gen412 ) ( negative-overruled $?gen413 & : ( not ( subseq-pos ( create$ pen18-overruled $?gen412 $$$ $?gen413 ) ) ) ) ( positive-defeated $?gen411 & : ( not ( member$ pen18 $?gen411 ) ) ) ) ( test ( eq ( class ?gen409 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen414 ( create$ pen18-overruled $?gen412 $?gen413 ) ) ) ?gen409 <- ( max_years_in_imprisonment ( negative-overruled $?gen414 ) )"))

([pen18-support] of derived-attribute-rule
   (pos-name pen18-support-gen646)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen18] ) ) ) ?gen408 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ) ?gen409 <- ( max_years_in_imprisonment ( value 3 ) ( positive-support $?gen411 & : ( not ( subseq-pos ( create$ pen18 ?gen408 $$$ $?gen411 ) ) ) ) ) ( test ( eq ( class ?gen409 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen414 ( create$ pen18 ?gen408 $?gen411 ) ) ) ?gen409 <- ( max_years_in_imprisonment ( positive-support $?gen414 ) )"))

([pen17-defeasibly-dot] of derived-attribute-rule
   (pos-name pen17-defeasibly-dot-gen648)
   (depends-on declare max_years_in_imprisonment zk_151_teska_tjelesna_povreda_i_nastupila_smrt max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen17] ) ) ) ?gen400 <- ( max_years_in_imprisonment ( value 12 ) ( positive 1 ) ( positive-derivator pen17 $? ) ) ( test ( eq ( class ?gen400 ) max_years_in_imprisonment ) ) ( not ( and ?gen407 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( max_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen402 & : ( not ( member$ pen17 $?gen402 ) ) ) ) ) ) => ?gen400 <- ( max_years_in_imprisonment ( positive 0 ) )"))

([pen17-defeasibly] of derived-attribute-rule
   (pos-name pen17-defeasibly-gen650)
   (depends-on declare zk_151_teska_tjelesna_povreda_i_nastupila_smrt max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen17] ) ) ) ?gen407 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( max_years_in_imprisonment ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen402 & : ( not ( member$ pen17 $?gen402 ) ) ) ) ( test ( eq ( class ?gen400 ) max_years_in_imprisonment ) ) => ?gen400 <- ( max_years_in_imprisonment ( positive 1 ) ( positive-derivator pen17 ?gen407 ) )"))

([pen17-overruled-dot] of derived-attribute-rule
   (pos-name pen17-overruled-dot-gen652)
   (depends-on declare max_years_in_imprisonment zk_151_teska_tjelesna_povreda_i_nastupila_smrt max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen17] ) ) ) ?gen400 <- ( max_years_in_imprisonment ( value 12 ) ( negative-support $?gen403 ) ( negative-overruled $?gen404 & : ( subseq-pos ( create$ pen17-overruled $?gen403 $$$ $?gen404 ) ) ) ) ( test ( eq ( class ?gen400 ) max_years_in_imprisonment ) ) ( not ( and ?gen407 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( max_years_in_imprisonment ( positive-defeated $?gen402 & : ( not ( member$ pen17 $?gen402 ) ) ) ) ) ) => ( calc ( bind $?gen405 ( delete-member$ $?gen404 ( create$ pen17-overruled $?gen403 ) ) ) ) ?gen400 <- ( max_years_in_imprisonment ( negative-overruled $?gen405 ) )"))

([pen17-overruled] of derived-attribute-rule
   (pos-name pen17-overruled-gen654)
   (depends-on declare zk_151_teska_tjelesna_povreda_i_nastupila_smrt max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen17] ) ) ) ?gen407 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( max_years_in_imprisonment ( value 12 ) ( negative-support $?gen403 ) ( negative-overruled $?gen404 & : ( not ( subseq-pos ( create$ pen17-overruled $?gen403 $$$ $?gen404 ) ) ) ) ( positive-defeated $?gen402 & : ( not ( member$ pen17 $?gen402 ) ) ) ) ( test ( eq ( class ?gen400 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen405 ( create$ pen17-overruled $?gen403 $?gen404 ) ) ) ?gen400 <- ( max_years_in_imprisonment ( negative-overruled $?gen405 ) )"))

([pen17-support] of derived-attribute-rule
   (pos-name pen17-support-gen656)
   (depends-on declare zk_151_teska_tjelesna_povreda_i_nastupila_smrt max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen17] ) ) ) ?gen399 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ) ?gen400 <- ( max_years_in_imprisonment ( value 12 ) ( positive-support $?gen402 & : ( not ( subseq-pos ( create$ pen17 ?gen399 $$$ $?gen402 ) ) ) ) ) ( test ( eq ( class ?gen400 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen405 ( create$ pen17 ?gen399 $?gen402 ) ) ) ?gen400 <- ( max_years_in_imprisonment ( positive-support $?gen405 ) )"))

([pen16-defeasibly-dot] of derived-attribute-rule
   (pos-name pen16-defeasibly-dot-gen658)
   (depends-on declare min_years_in_imprisonment zk_151_teska_tjelesna_povreda_i_nastupila_smrt min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen16] ) ) ) ?gen391 <- ( min_years_in_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pen16 $? ) ) ( test ( eq ( class ?gen391 ) min_years_in_imprisonment ) ) ( not ( and ?gen398 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( min_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen393 & : ( not ( member$ pen16 $?gen393 ) ) ) ) ) ) => ?gen391 <- ( min_years_in_imprisonment ( positive 0 ) )"))

([pen16-defeasibly] of derived-attribute-rule
   (pos-name pen16-defeasibly-gen660)
   (depends-on declare zk_151_teska_tjelesna_povreda_i_nastupila_smrt min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen16] ) ) ) ?gen398 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( min_years_in_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen393 & : ( not ( member$ pen16 $?gen393 ) ) ) ) ( test ( eq ( class ?gen391 ) min_years_in_imprisonment ) ) => ?gen391 <- ( min_years_in_imprisonment ( positive 1 ) ( positive-derivator pen16 ?gen398 ) )"))

([pen16-overruled-dot] of derived-attribute-rule
   (pos-name pen16-overruled-dot-gen662)
   (depends-on declare min_years_in_imprisonment zk_151_teska_tjelesna_povreda_i_nastupila_smrt min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen16] ) ) ) ?gen391 <- ( min_years_in_imprisonment ( value 2 ) ( negative-support $?gen394 ) ( negative-overruled $?gen395 & : ( subseq-pos ( create$ pen16-overruled $?gen394 $$$ $?gen395 ) ) ) ) ( test ( eq ( class ?gen391 ) min_years_in_imprisonment ) ) ( not ( and ?gen398 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( min_years_in_imprisonment ( positive-defeated $?gen393 & : ( not ( member$ pen16 $?gen393 ) ) ) ) ) ) => ( calc ( bind $?gen396 ( delete-member$ $?gen395 ( create$ pen16-overruled $?gen394 ) ) ) ) ?gen391 <- ( min_years_in_imprisonment ( negative-overruled $?gen396 ) )"))

([pen16-overruled] of derived-attribute-rule
   (pos-name pen16-overruled-gen664)
   (depends-on declare zk_151_teska_tjelesna_povreda_i_nastupila_smrt min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen16] ) ) ) ?gen398 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( min_years_in_imprisonment ( value 2 ) ( negative-support $?gen394 ) ( negative-overruled $?gen395 & : ( not ( subseq-pos ( create$ pen16-overruled $?gen394 $$$ $?gen395 ) ) ) ) ( positive-defeated $?gen393 & : ( not ( member$ pen16 $?gen393 ) ) ) ) ( test ( eq ( class ?gen391 ) min_years_in_imprisonment ) ) => ( calc ( bind $?gen396 ( create$ pen16-overruled $?gen394 $?gen395 ) ) ) ?gen391 <- ( min_years_in_imprisonment ( negative-overruled $?gen396 ) )"))

([pen16-support] of derived-attribute-rule
   (pos-name pen16-support-gen666)
   (depends-on declare zk_151_teska_tjelesna_povreda_i_nastupila_smrt min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen16] ) ) ) ?gen390 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ) ?gen391 <- ( min_years_in_imprisonment ( value 2 ) ( positive-support $?gen393 & : ( not ( subseq-pos ( create$ pen16 ?gen390 $$$ $?gen393 ) ) ) ) ) ( test ( eq ( class ?gen391 ) min_years_in_imprisonment ) ) => ( calc ( bind $?gen396 ( create$ pen16 ?gen390 $?gen393 ) ) ) ?gen391 <- ( min_years_in_imprisonment ( positive-support $?gen396 ) )"))

([pen15-defeasibly-dot] of derived-attribute-rule
   (pos-name pen15-defeasibly-dot-gen668)
   (depends-on declare max_years_in_imprisonment zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen15] ) ) ) ?gen382 <- ( max_years_in_imprisonment ( value 8 ) ( positive 1 ) ( positive-derivator pen15 $? ) ) ( test ( eq ( class ?gen382 ) max_years_in_imprisonment ) ) ( not ( and ?gen389 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( max_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen384 & : ( not ( member$ pen15 $?gen384 ) ) ) ) ) ) => ?gen382 <- ( max_years_in_imprisonment ( positive 0 ) )"))

([pen15-defeasibly] of derived-attribute-rule
   (pos-name pen15-defeasibly-gen670)
   (depends-on declare zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen15] ) ) ) ?gen389 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( max_years_in_imprisonment ( value 8 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen384 & : ( not ( member$ pen15 $?gen384 ) ) ) ) ( test ( eq ( class ?gen382 ) max_years_in_imprisonment ) ) => ?gen382 <- ( max_years_in_imprisonment ( positive 1 ) ( positive-derivator pen15 ?gen389 ) )"))

([pen15-overruled-dot] of derived-attribute-rule
   (pos-name pen15-overruled-dot-gen672)
   (depends-on declare max_years_in_imprisonment zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen15] ) ) ) ?gen382 <- ( max_years_in_imprisonment ( value 8 ) ( negative-support $?gen385 ) ( negative-overruled $?gen386 & : ( subseq-pos ( create$ pen15-overruled $?gen385 $$$ $?gen386 ) ) ) ) ( test ( eq ( class ?gen382 ) max_years_in_imprisonment ) ) ( not ( and ?gen389 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( max_years_in_imprisonment ( positive-defeated $?gen384 & : ( not ( member$ pen15 $?gen384 ) ) ) ) ) ) => ( calc ( bind $?gen387 ( delete-member$ $?gen386 ( create$ pen15-overruled $?gen385 ) ) ) ) ?gen382 <- ( max_years_in_imprisonment ( negative-overruled $?gen387 ) )"))

([pen15-overruled] of derived-attribute-rule
   (pos-name pen15-overruled-gen674)
   (depends-on declare zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen15] ) ) ) ?gen389 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( max_years_in_imprisonment ( value 8 ) ( negative-support $?gen385 ) ( negative-overruled $?gen386 & : ( not ( subseq-pos ( create$ pen15-overruled $?gen385 $$$ $?gen386 ) ) ) ) ( positive-defeated $?gen384 & : ( not ( member$ pen15 $?gen384 ) ) ) ) ( test ( eq ( class ?gen382 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen387 ( create$ pen15-overruled $?gen385 $?gen386 ) ) ) ?gen382 <- ( max_years_in_imprisonment ( negative-overruled $?gen387 ) )"))

([pen15-support] of derived-attribute-rule
   (pos-name pen15-support-gen676)
   (depends-on declare zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen15] ) ) ) ?gen381 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ) ?gen382 <- ( max_years_in_imprisonment ( value 8 ) ( positive-support $?gen384 & : ( not ( subseq-pos ( create$ pen15 ?gen381 $$$ $?gen384 ) ) ) ) ) ( test ( eq ( class ?gen382 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen387 ( create$ pen15 ?gen381 $?gen384 ) ) ) ?gen382 <- ( max_years_in_imprisonment ( positive-support $?gen387 ) )"))

([pen14-defeasibly-dot] of derived-attribute-rule
   (pos-name pen14-defeasibly-dot-gen678)
   (depends-on declare min_years_in_imprisonment zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen14] ) ) ) ?gen373 <- ( min_years_in_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen14 $? ) ) ( test ( eq ( class ?gen373 ) min_years_in_imprisonment ) ) ( not ( and ?gen380 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( min_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen375 & : ( not ( member$ pen14 $?gen375 ) ) ) ) ) ) => ?gen373 <- ( min_years_in_imprisonment ( positive 0 ) )"))

([pen14-defeasibly] of derived-attribute-rule
   (pos-name pen14-defeasibly-gen680)
   (depends-on declare zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen14] ) ) ) ?gen380 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( min_years_in_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen375 & : ( not ( member$ pen14 $?gen375 ) ) ) ) ( test ( eq ( class ?gen373 ) min_years_in_imprisonment ) ) => ?gen373 <- ( min_years_in_imprisonment ( positive 1 ) ( positive-derivator pen14 ?gen380 ) )"))

([pen14-overruled-dot] of derived-attribute-rule
   (pos-name pen14-overruled-dot-gen682)
   (depends-on declare min_years_in_imprisonment zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen14] ) ) ) ?gen373 <- ( min_years_in_imprisonment ( value 1 ) ( negative-support $?gen376 ) ( negative-overruled $?gen377 & : ( subseq-pos ( create$ pen14-overruled $?gen376 $$$ $?gen377 ) ) ) ) ( test ( eq ( class ?gen373 ) min_years_in_imprisonment ) ) ( not ( and ?gen380 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( min_years_in_imprisonment ( positive-defeated $?gen375 & : ( not ( member$ pen14 $?gen375 ) ) ) ) ) ) => ( calc ( bind $?gen378 ( delete-member$ $?gen377 ( create$ pen14-overruled $?gen376 ) ) ) ) ?gen373 <- ( min_years_in_imprisonment ( negative-overruled $?gen378 ) )"))

([pen14-overruled] of derived-attribute-rule
   (pos-name pen14-overruled-gen684)
   (depends-on declare zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen14] ) ) ) ?gen380 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( min_years_in_imprisonment ( value 1 ) ( negative-support $?gen376 ) ( negative-overruled $?gen377 & : ( not ( subseq-pos ( create$ pen14-overruled $?gen376 $$$ $?gen377 ) ) ) ) ( positive-defeated $?gen375 & : ( not ( member$ pen14 $?gen375 ) ) ) ) ( test ( eq ( class ?gen373 ) min_years_in_imprisonment ) ) => ( calc ( bind $?gen378 ( create$ pen14-overruled $?gen376 $?gen377 ) ) ) ?gen373 <- ( min_years_in_imprisonment ( negative-overruled $?gen378 ) )"))

([pen14-support] of derived-attribute-rule
   (pos-name pen14-support-gen686)
   (depends-on declare zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen14] ) ) ) ?gen372 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ) ?gen373 <- ( min_years_in_imprisonment ( value 1 ) ( positive-support $?gen375 & : ( not ( subseq-pos ( create$ pen14 ?gen372 $$$ $?gen375 ) ) ) ) ) ( test ( eq ( class ?gen373 ) min_years_in_imprisonment ) ) => ( calc ( bind $?gen378 ( create$ pen14 ?gen372 $?gen375 ) ) ) ?gen373 <- ( min_years_in_imprisonment ( positive-support $?gen378 ) )"))

([pen13-defeasibly-dot] of derived-attribute-rule
   (pos-name pen13-defeasibly-dot-gen688)
   (depends-on declare max_years_in_imprisonment zk_151_teska_tjelesna_povreda max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen13] ) ) ) ?gen364 <- ( max_years_in_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pen13 $? ) ) ( test ( eq ( class ?gen364 ) max_years_in_imprisonment ) ) ( not ( and ?gen371 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( max_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen366 & : ( not ( member$ pen13 $?gen366 ) ) ) ) ) ) => ?gen364 <- ( max_years_in_imprisonment ( positive 0 ) )"))

([pen13-defeasibly] of derived-attribute-rule
   (pos-name pen13-defeasibly-gen690)
   (depends-on declare zk_151_teska_tjelesna_povreda max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen13] ) ) ) ?gen371 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( max_years_in_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen366 & : ( not ( member$ pen13 $?gen366 ) ) ) ) ( test ( eq ( class ?gen364 ) max_years_in_imprisonment ) ) => ?gen364 <- ( max_years_in_imprisonment ( positive 1 ) ( positive-derivator pen13 ?gen371 ) )"))

([pen13-overruled-dot] of derived-attribute-rule
   (pos-name pen13-overruled-dot-gen692)
   (depends-on declare max_years_in_imprisonment zk_151_teska_tjelesna_povreda max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen13] ) ) ) ?gen364 <- ( max_years_in_imprisonment ( value 5 ) ( negative-support $?gen367 ) ( negative-overruled $?gen368 & : ( subseq-pos ( create$ pen13-overruled $?gen367 $$$ $?gen368 ) ) ) ) ( test ( eq ( class ?gen364 ) max_years_in_imprisonment ) ) ( not ( and ?gen371 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( max_years_in_imprisonment ( positive-defeated $?gen366 & : ( not ( member$ pen13 $?gen366 ) ) ) ) ) ) => ( calc ( bind $?gen369 ( delete-member$ $?gen368 ( create$ pen13-overruled $?gen367 ) ) ) ) ?gen364 <- ( max_years_in_imprisonment ( negative-overruled $?gen369 ) )"))

([pen13-overruled] of derived-attribute-rule
   (pos-name pen13-overruled-gen694)
   (depends-on declare zk_151_teska_tjelesna_povreda max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen13] ) ) ) ?gen371 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( max_years_in_imprisonment ( value 5 ) ( negative-support $?gen367 ) ( negative-overruled $?gen368 & : ( not ( subseq-pos ( create$ pen13-overruled $?gen367 $$$ $?gen368 ) ) ) ) ( positive-defeated $?gen366 & : ( not ( member$ pen13 $?gen366 ) ) ) ) ( test ( eq ( class ?gen364 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen369 ( create$ pen13-overruled $?gen367 $?gen368 ) ) ) ?gen364 <- ( max_years_in_imprisonment ( negative-overruled $?gen369 ) )"))

([pen13-support] of derived-attribute-rule
   (pos-name pen13-support-gen696)
   (depends-on declare zk_151_teska_tjelesna_povreda max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen13] ) ) ) ?gen363 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ) ?gen364 <- ( max_years_in_imprisonment ( value 5 ) ( positive-support $?gen366 & : ( not ( subseq-pos ( create$ pen13 ?gen363 $$$ $?gen366 ) ) ) ) ) ( test ( eq ( class ?gen364 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen369 ( create$ pen13 ?gen363 $?gen366 ) ) ) ?gen364 <- ( max_years_in_imprisonment ( positive-support $?gen369 ) )"))

([pen12-defeasibly-dot] of derived-attribute-rule
   (pos-name pen12-defeasibly-dot-gen698)
   (depends-on declare min_months_in_imprisonment zk_151_teska_tjelesna_povreda min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen12] ) ) ) ?gen355 <- ( min_months_in_imprisonment ( value 6 ) ( positive 1 ) ( positive-derivator pen12 $? ) ) ( test ( eq ( class ?gen355 ) min_months_in_imprisonment ) ) ( not ( and ?gen362 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( min_months_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen357 & : ( not ( member$ pen12 $?gen357 ) ) ) ) ) ) => ?gen355 <- ( min_months_in_imprisonment ( positive 0 ) )"))

([pen12-defeasibly] of derived-attribute-rule
   (pos-name pen12-defeasibly-gen700)
   (depends-on declare zk_151_teska_tjelesna_povreda min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen12] ) ) ) ?gen362 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( min_months_in_imprisonment ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen357 & : ( not ( member$ pen12 $?gen357 ) ) ) ) ( test ( eq ( class ?gen355 ) min_months_in_imprisonment ) ) => ?gen355 <- ( min_months_in_imprisonment ( positive 1 ) ( positive-derivator pen12 ?gen362 ) )"))

([pen12-overruled-dot] of derived-attribute-rule
   (pos-name pen12-overruled-dot-gen702)
   (depends-on declare min_months_in_imprisonment zk_151_teska_tjelesna_povreda min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen12] ) ) ) ?gen355 <- ( min_months_in_imprisonment ( value 6 ) ( negative-support $?gen358 ) ( negative-overruled $?gen359 & : ( subseq-pos ( create$ pen12-overruled $?gen358 $$$ $?gen359 ) ) ) ) ( test ( eq ( class ?gen355 ) min_months_in_imprisonment ) ) ( not ( and ?gen362 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( min_months_in_imprisonment ( positive-defeated $?gen357 & : ( not ( member$ pen12 $?gen357 ) ) ) ) ) ) => ( calc ( bind $?gen360 ( delete-member$ $?gen359 ( create$ pen12-overruled $?gen358 ) ) ) ) ?gen355 <- ( min_months_in_imprisonment ( negative-overruled $?gen360 ) )"))

([pen12-overruled] of derived-attribute-rule
   (pos-name pen12-overruled-gen704)
   (depends-on declare zk_151_teska_tjelesna_povreda min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen12] ) ) ) ?gen362 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( min_months_in_imprisonment ( value 6 ) ( negative-support $?gen358 ) ( negative-overruled $?gen359 & : ( not ( subseq-pos ( create$ pen12-overruled $?gen358 $$$ $?gen359 ) ) ) ) ( positive-defeated $?gen357 & : ( not ( member$ pen12 $?gen357 ) ) ) ) ( test ( eq ( class ?gen355 ) min_months_in_imprisonment ) ) => ( calc ( bind $?gen360 ( create$ pen12-overruled $?gen358 $?gen359 ) ) ) ?gen355 <- ( min_months_in_imprisonment ( negative-overruled $?gen360 ) )"))

([pen12-support] of derived-attribute-rule
   (pos-name pen12-support-gen706)
   (depends-on declare zk_151_teska_tjelesna_povreda min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen12] ) ) ) ?gen354 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ) ?gen355 <- ( min_months_in_imprisonment ( value 6 ) ( positive-support $?gen357 & : ( not ( subseq-pos ( create$ pen12 ?gen354 $$$ $?gen357 ) ) ) ) ) ( test ( eq ( class ?gen355 ) min_months_in_imprisonment ) ) => ( calc ( bind $?gen360 ( create$ pen12 ?gen354 $?gen357 ) ) ) ?gen355 <- ( min_months_in_imprisonment ( positive-support $?gen360 ) )"))

([pen11-defeasibly-dot] of derived-attribute-rule
   (pos-name pen11-defeasibly-dot-gen708)
   (depends-on declare gonjenje_po_privatnoj_tuzbi zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi gonjenje_po_privatnoj_tuzbi)
   (implies gonjenje_po_privatnoj_tuzbi)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen11] ) ) ) ?gen346 <- ( gonjenje_po_privatnoj_tuzbi ( value true ) ( positive 1 ) ( positive-derivator pen11 $? ) ) ( test ( eq ( class ?gen346 ) gonjenje_po_privatnoj_tuzbi ) ) ( not ( and ?gen353 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( gonjenje_po_privatnoj_tuzbi ( negative ~ 2 ) ( positive-overruled $?gen348 & : ( not ( member$ pen11 $?gen348 ) ) ) ) ) ) => ?gen346 <- ( gonjenje_po_privatnoj_tuzbi ( positive 0 ) )"))

([pen11-defeasibly] of derived-attribute-rule
   (pos-name pen11-defeasibly-gen710)
   (depends-on declare zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi gonjenje_po_privatnoj_tuzbi)
   (implies gonjenje_po_privatnoj_tuzbi)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen11] ) ) ) ?gen353 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( gonjenje_po_privatnoj_tuzbi ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen348 & : ( not ( member$ pen11 $?gen348 ) ) ) ) ( test ( eq ( class ?gen346 ) gonjenje_po_privatnoj_tuzbi ) ) => ?gen346 <- ( gonjenje_po_privatnoj_tuzbi ( positive 1 ) ( positive-derivator pen11 ?gen353 ) )"))

([pen11-overruled-dot] of derived-attribute-rule
   (pos-name pen11-overruled-dot-gen712)
   (depends-on declare gonjenje_po_privatnoj_tuzbi zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi gonjenje_po_privatnoj_tuzbi)
   (implies gonjenje_po_privatnoj_tuzbi)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen11] ) ) ) ?gen346 <- ( gonjenje_po_privatnoj_tuzbi ( value true ) ( negative-support $?gen349 ) ( negative-overruled $?gen350 & : ( subseq-pos ( create$ pen11-overruled $?gen349 $$$ $?gen350 ) ) ) ) ( test ( eq ( class ?gen346 ) gonjenje_po_privatnoj_tuzbi ) ) ( not ( and ?gen353 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( gonjenje_po_privatnoj_tuzbi ( positive-defeated $?gen348 & : ( not ( member$ pen11 $?gen348 ) ) ) ) ) ) => ( calc ( bind $?gen351 ( delete-member$ $?gen350 ( create$ pen11-overruled $?gen349 ) ) ) ) ?gen346 <- ( gonjenje_po_privatnoj_tuzbi ( negative-overruled $?gen351 ) )"))

([pen11-overruled] of derived-attribute-rule
   (pos-name pen11-overruled-gen714)
   (depends-on declare zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi gonjenje_po_privatnoj_tuzbi)
   (implies gonjenje_po_privatnoj_tuzbi)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen11] ) ) ) ?gen353 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( gonjenje_po_privatnoj_tuzbi ( value true ) ( negative-support $?gen349 ) ( negative-overruled $?gen350 & : ( not ( subseq-pos ( create$ pen11-overruled $?gen349 $$$ $?gen350 ) ) ) ) ( positive-defeated $?gen348 & : ( not ( member$ pen11 $?gen348 ) ) ) ) ( test ( eq ( class ?gen346 ) gonjenje_po_privatnoj_tuzbi ) ) => ( calc ( bind $?gen351 ( create$ pen11-overruled $?gen349 $?gen350 ) ) ) ?gen346 <- ( gonjenje_po_privatnoj_tuzbi ( negative-overruled $?gen351 ) )"))

([pen11-support] of derived-attribute-rule
   (pos-name pen11-support-gen716)
   (depends-on declare zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi gonjenje_po_privatnoj_tuzbi)
   (implies gonjenje_po_privatnoj_tuzbi)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen11] ) ) ) ?gen345 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ) ?gen346 <- ( gonjenje_po_privatnoj_tuzbi ( value true ) ( positive-support $?gen348 & : ( not ( subseq-pos ( create$ pen11 ?gen345 $$$ $?gen348 ) ) ) ) ) ( test ( eq ( class ?gen346 ) gonjenje_po_privatnoj_tuzbi ) ) => ( calc ( bind $?gen351 ( create$ pen11 ?gen345 $?gen348 ) ) ) ?gen346 <- ( gonjenje_po_privatnoj_tuzbi ( positive-support $?gen351 ) )"))

([pen10-defeasibly-dot] of derived-attribute-rule
   (pos-name pen10-defeasibly-dot-gen718)
   (depends-on declare izrecena_opomena zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem izrecena_opomena)
   (implies izrecena_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen10] ) ) ) ?gen337 <- ( izrecena_opomena ( value true ) ( positive 1 ) ( positive-derivator pen10 $? ) ) ( test ( eq ( class ?gen337 ) izrecena_opomena ) ) ( not ( and ?gen344 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( izrecena_opomena ( negative ~ 2 ) ( positive-overruled $?gen339 & : ( not ( member$ pen10 $?gen339 ) ) ) ) ) ) => ?gen337 <- ( izrecena_opomena ( positive 0 ) )"))

([pen10-defeasibly] of derived-attribute-rule
   (pos-name pen10-defeasibly-gen720)
   (depends-on declare zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem izrecena_opomena)
   (implies izrecena_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen10] ) ) ) ?gen344 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( izrecena_opomena ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen339 & : ( not ( member$ pen10 $?gen339 ) ) ) ) ( test ( eq ( class ?gen337 ) izrecena_opomena ) ) => ?gen337 <- ( izrecena_opomena ( positive 1 ) ( positive-derivator pen10 ?gen344 ) )"))

([pen10-overruled-dot] of derived-attribute-rule
   (pos-name pen10-overruled-dot-gen722)
   (depends-on declare izrecena_opomena zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem izrecena_opomena)
   (implies izrecena_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen10] ) ) ) ?gen337 <- ( izrecena_opomena ( value true ) ( negative-support $?gen340 ) ( negative-overruled $?gen341 & : ( subseq-pos ( create$ pen10-overruled $?gen340 $$$ $?gen341 ) ) ) ) ( test ( eq ( class ?gen337 ) izrecena_opomena ) ) ( not ( and ?gen344 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( izrecena_opomena ( positive-defeated $?gen339 & : ( not ( member$ pen10 $?gen339 ) ) ) ) ) ) => ( calc ( bind $?gen342 ( delete-member$ $?gen341 ( create$ pen10-overruled $?gen340 ) ) ) ) ?gen337 <- ( izrecena_opomena ( negative-overruled $?gen342 ) )"))

([pen10-overruled] of derived-attribute-rule
   (pos-name pen10-overruled-gen724)
   (depends-on declare zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem izrecena_opomena)
   (implies izrecena_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen10] ) ) ) ?gen344 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( izrecena_opomena ( value true ) ( negative-support $?gen340 ) ( negative-overruled $?gen341 & : ( not ( subseq-pos ( create$ pen10-overruled $?gen340 $$$ $?gen341 ) ) ) ) ( positive-defeated $?gen339 & : ( not ( member$ pen10 $?gen339 ) ) ) ) ( test ( eq ( class ?gen337 ) izrecena_opomena ) ) => ( calc ( bind $?gen342 ( create$ pen10-overruled $?gen340 $?gen341 ) ) ) ?gen337 <- ( izrecena_opomena ( negative-overruled $?gen342 ) )"))

([pen10-support] of derived-attribute-rule
   (pos-name pen10-support-gen726)
   (depends-on declare zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem izrecena_opomena)
   (implies izrecena_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen10] ) ) ) ?gen336 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ) ?gen337 <- ( izrecena_opomena ( value true ) ( positive-support $?gen339 & : ( not ( subseq-pos ( create$ pen10 ?gen336 $$$ $?gen339 ) ) ) ) ) ( test ( eq ( class ?gen337 ) izrecena_opomena ) ) => ( calc ( bind $?gen342 ( create$ pen10 ?gen336 $?gen339 ) ) ) ?gen337 <- ( izrecena_opomena ( positive-support $?gen342 ) )"))

([pen9-defeasibly-dot] of derived-attribute-rule
   (pos-name pen9-defeasibly-dot-gen728)
   (depends-on declare max_years_in_imprisonment zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen9] ) ) ) ?gen328 <- ( max_years_in_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen9 $? ) ) ( test ( eq ( class ?gen328 ) max_years_in_imprisonment ) ) ( not ( and ?gen335 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( max_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen330 & : ( not ( member$ pen9 $?gen330 ) ) ) ) ) ) => ?gen328 <- ( max_years_in_imprisonment ( positive 0 ) )"))

([pen9-defeasibly] of derived-attribute-rule
   (pos-name pen9-defeasibly-gen730)
   (depends-on declare zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen9] ) ) ) ?gen335 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( max_years_in_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen330 & : ( not ( member$ pen9 $?gen330 ) ) ) ) ( test ( eq ( class ?gen328 ) max_years_in_imprisonment ) ) => ?gen328 <- ( max_years_in_imprisonment ( positive 1 ) ( positive-derivator pen9 ?gen335 ) )"))

([pen9-overruled-dot] of derived-attribute-rule
   (pos-name pen9-overruled-dot-gen732)
   (depends-on declare max_years_in_imprisonment zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen9] ) ) ) ?gen328 <- ( max_years_in_imprisonment ( value 3 ) ( negative-support $?gen331 ) ( negative-overruled $?gen332 & : ( subseq-pos ( create$ pen9-overruled $?gen331 $$$ $?gen332 ) ) ) ) ( test ( eq ( class ?gen328 ) max_years_in_imprisonment ) ) ( not ( and ?gen335 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( max_years_in_imprisonment ( positive-defeated $?gen330 & : ( not ( member$ pen9 $?gen330 ) ) ) ) ) ) => ( calc ( bind $?gen333 ( delete-member$ $?gen332 ( create$ pen9-overruled $?gen331 ) ) ) ) ?gen328 <- ( max_years_in_imprisonment ( negative-overruled $?gen333 ) )"))

([pen9-overruled] of derived-attribute-rule
   (pos-name pen9-overruled-gen734)
   (depends-on declare zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen9] ) ) ) ?gen335 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( max_years_in_imprisonment ( value 3 ) ( negative-support $?gen331 ) ( negative-overruled $?gen332 & : ( not ( subseq-pos ( create$ pen9-overruled $?gen331 $$$ $?gen332 ) ) ) ) ( positive-defeated $?gen330 & : ( not ( member$ pen9 $?gen330 ) ) ) ) ( test ( eq ( class ?gen328 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen333 ( create$ pen9-overruled $?gen331 $?gen332 ) ) ) ?gen328 <- ( max_years_in_imprisonment ( negative-overruled $?gen333 ) )"))

([pen9-support] of derived-attribute-rule
   (pos-name pen9-support-gen736)
   (depends-on declare zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen9] ) ) ) ?gen327 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ) ?gen328 <- ( max_years_in_imprisonment ( value 3 ) ( positive-support $?gen330 & : ( not ( subseq-pos ( create$ pen9 ?gen327 $$$ $?gen330 ) ) ) ) ) ( test ( eq ( class ?gen328 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen333 ( create$ pen9 ?gen327 $?gen330 ) ) ) ?gen328 <- ( max_years_in_imprisonment ( positive-support $?gen333 ) )"))

([pen8-defeasibly-dot] of derived-attribute-rule
   (pos-name pen8-defeasibly-dot-gen738)
   (depends-on declare years_in_imprisonment zk_152_laka_tjelesna_povreda years_in_imprisonment)
   (implies years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen8] ) ) ) ?gen319 <- ( years_in_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen8 $? ) ) ( test ( eq ( class ?gen319 ) years_in_imprisonment ) ) ( not ( and ?gen326 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen321 & : ( not ( member$ pen8 $?gen321 ) ) ) ) ) ) => ?gen319 <- ( years_in_imprisonment ( positive 0 ) )"))

([pen8-defeasibly] of derived-attribute-rule
   (pos-name pen8-defeasibly-gen740)
   (depends-on declare zk_152_laka_tjelesna_povreda years_in_imprisonment)
   (implies years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen8] ) ) ) ?gen326 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( years_in_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen321 & : ( not ( member$ pen8 $?gen321 ) ) ) ) ( test ( eq ( class ?gen319 ) years_in_imprisonment ) ) => ?gen319 <- ( years_in_imprisonment ( positive 1 ) ( positive-derivator pen8 ?gen326 ) )"))

([pen8-overruled-dot] of derived-attribute-rule
   (pos-name pen8-overruled-dot-gen742)
   (depends-on declare years_in_imprisonment zk_152_laka_tjelesna_povreda years_in_imprisonment)
   (implies years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen8] ) ) ) ?gen319 <- ( years_in_imprisonment ( value 1 ) ( negative-support $?gen322 ) ( negative-overruled $?gen323 & : ( subseq-pos ( create$ pen8-overruled $?gen322 $$$ $?gen323 ) ) ) ) ( test ( eq ( class ?gen319 ) years_in_imprisonment ) ) ( not ( and ?gen326 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( years_in_imprisonment ( positive-defeated $?gen321 & : ( not ( member$ pen8 $?gen321 ) ) ) ) ) ) => ( calc ( bind $?gen324 ( delete-member$ $?gen323 ( create$ pen8-overruled $?gen322 ) ) ) ) ?gen319 <- ( years_in_imprisonment ( negative-overruled $?gen324 ) )"))

([pen8-overruled] of derived-attribute-rule
   (pos-name pen8-overruled-gen744)
   (depends-on declare zk_152_laka_tjelesna_povreda years_in_imprisonment)
   (implies years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen8] ) ) ) ?gen326 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( years_in_imprisonment ( value 1 ) ( negative-support $?gen322 ) ( negative-overruled $?gen323 & : ( not ( subseq-pos ( create$ pen8-overruled $?gen322 $$$ $?gen323 ) ) ) ) ( positive-defeated $?gen321 & : ( not ( member$ pen8 $?gen321 ) ) ) ) ( test ( eq ( class ?gen319 ) years_in_imprisonment ) ) => ( calc ( bind $?gen324 ( create$ pen8-overruled $?gen322 $?gen323 ) ) ) ?gen319 <- ( years_in_imprisonment ( negative-overruled $?gen324 ) )"))

([pen8-support] of derived-attribute-rule
   (pos-name pen8-support-gen746)
   (depends-on declare zk_152_laka_tjelesna_povreda years_in_imprisonment)
   (implies years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen8] ) ) ) ?gen318 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ) ?gen319 <- ( years_in_imprisonment ( value 1 ) ( positive-support $?gen321 & : ( not ( subseq-pos ( create$ pen8 ?gen318 $$$ $?gen321 ) ) ) ) ) ( test ( eq ( class ?gen319 ) years_in_imprisonment ) ) => ( calc ( bind $?gen324 ( create$ pen8 ?gen318 $?gen321 ) ) ) ?gen319 <- ( years_in_imprisonment ( positive-support $?gen324 ) )"))

([pen7-defeasibly-dot] of derived-attribute-rule
   (pos-name pen7-defeasibly-dot-gen748)
   (depends-on declare novcana_kazna zk_152_laka_tjelesna_povreda novcana_kazna)
   (implies novcana_kazna)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen7] ) ) ) ?gen310 <- ( novcana_kazna ( value 0 ) ( positive 1 ) ( positive-derivator pen7 $? ) ) ( test ( eq ( class ?gen310 ) novcana_kazna ) ) ( not ( and ?gen317 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( novcana_kazna ( negative ~ 2 ) ( positive-overruled $?gen312 & : ( not ( member$ pen7 $?gen312 ) ) ) ) ) ) => ?gen310 <- ( novcana_kazna ( positive 0 ) )"))

([pen7-defeasibly] of derived-attribute-rule
   (pos-name pen7-defeasibly-gen750)
   (depends-on declare zk_152_laka_tjelesna_povreda novcana_kazna)
   (implies novcana_kazna)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen7] ) ) ) ?gen317 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( novcana_kazna ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen312 & : ( not ( member$ pen7 $?gen312 ) ) ) ) ( test ( eq ( class ?gen310 ) novcana_kazna ) ) => ?gen310 <- ( novcana_kazna ( positive 1 ) ( positive-derivator pen7 ?gen317 ) )"))

([pen7-overruled-dot] of derived-attribute-rule
   (pos-name pen7-overruled-dot-gen752)
   (depends-on declare novcana_kazna zk_152_laka_tjelesna_povreda novcana_kazna)
   (implies novcana_kazna)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen7] ) ) ) ?gen310 <- ( novcana_kazna ( value 0 ) ( negative-support $?gen313 ) ( negative-overruled $?gen314 & : ( subseq-pos ( create$ pen7-overruled $?gen313 $$$ $?gen314 ) ) ) ) ( test ( eq ( class ?gen310 ) novcana_kazna ) ) ( not ( and ?gen317 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( novcana_kazna ( positive-defeated $?gen312 & : ( not ( member$ pen7 $?gen312 ) ) ) ) ) ) => ( calc ( bind $?gen315 ( delete-member$ $?gen314 ( create$ pen7-overruled $?gen313 ) ) ) ) ?gen310 <- ( novcana_kazna ( negative-overruled $?gen315 ) )"))

([pen7-overruled] of derived-attribute-rule
   (pos-name pen7-overruled-gen754)
   (depends-on declare zk_152_laka_tjelesna_povreda novcana_kazna)
   (implies novcana_kazna)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen7] ) ) ) ?gen317 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( novcana_kazna ( value 0 ) ( negative-support $?gen313 ) ( negative-overruled $?gen314 & : ( not ( subseq-pos ( create$ pen7-overruled $?gen313 $$$ $?gen314 ) ) ) ) ( positive-defeated $?gen312 & : ( not ( member$ pen7 $?gen312 ) ) ) ) ( test ( eq ( class ?gen310 ) novcana_kazna ) ) => ( calc ( bind $?gen315 ( create$ pen7-overruled $?gen313 $?gen314 ) ) ) ?gen310 <- ( novcana_kazna ( negative-overruled $?gen315 ) )"))

([pen7-support] of derived-attribute-rule
   (pos-name pen7-support-gen756)
   (depends-on declare zk_152_laka_tjelesna_povreda novcana_kazna)
   (implies novcana_kazna)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen7] ) ) ) ?gen309 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ) ?gen310 <- ( novcana_kazna ( value 0 ) ( positive-support $?gen312 & : ( not ( subseq-pos ( create$ pen7 ?gen309 $$$ $?gen312 ) ) ) ) ) ( test ( eq ( class ?gen310 ) novcana_kazna ) ) => ( calc ( bind $?gen315 ( create$ pen7 ?gen309 $?gen312 ) ) ) ?gen310 <- ( novcana_kazna ( positive-support $?gen315 ) )"))

([pen6-defeasibly-dot] of derived-attribute-rule
   (pos-name pen6-defeasibly-dot-gen758)
   (depends-on declare months_in_imprisonment zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji months_in_imprisonment)
   (implies months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen6] ) ) ) ?gen301 <- ( months_in_imprisonment ( value 6 ) ( positive 1 ) ( positive-derivator pen6 $? ) ) ( test ( eq ( class ?gen301 ) months_in_imprisonment ) ) ( not ( and ?gen308 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( months_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen303 & : ( not ( member$ pen6 $?gen303 ) ) ) ) ) ) => ?gen301 <- ( months_in_imprisonment ( positive 0 ) )"))

([pen6-defeasibly] of derived-attribute-rule
   (pos-name pen6-defeasibly-gen760)
   (depends-on declare zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji months_in_imprisonment)
   (implies months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen6] ) ) ) ?gen308 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( months_in_imprisonment ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen303 & : ( not ( member$ pen6 $?gen303 ) ) ) ) ( test ( eq ( class ?gen301 ) months_in_imprisonment ) ) => ?gen301 <- ( months_in_imprisonment ( positive 1 ) ( positive-derivator pen6 ?gen308 ) )"))

([pen6-overruled-dot] of derived-attribute-rule
   (pos-name pen6-overruled-dot-gen762)
   (depends-on declare months_in_imprisonment zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji months_in_imprisonment)
   (implies months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen6] ) ) ) ?gen301 <- ( months_in_imprisonment ( value 6 ) ( negative-support $?gen304 ) ( negative-overruled $?gen305 & : ( subseq-pos ( create$ pen6-overruled $?gen304 $$$ $?gen305 ) ) ) ) ( test ( eq ( class ?gen301 ) months_in_imprisonment ) ) ( not ( and ?gen308 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( months_in_imprisonment ( positive-defeated $?gen303 & : ( not ( member$ pen6 $?gen303 ) ) ) ) ) ) => ( calc ( bind $?gen306 ( delete-member$ $?gen305 ( create$ pen6-overruled $?gen304 ) ) ) ) ?gen301 <- ( months_in_imprisonment ( negative-overruled $?gen306 ) )"))

([pen6-overruled] of derived-attribute-rule
   (pos-name pen6-overruled-gen764)
   (depends-on declare zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji months_in_imprisonment)
   (implies months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen6] ) ) ) ?gen308 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( months_in_imprisonment ( value 6 ) ( negative-support $?gen304 ) ( negative-overruled $?gen305 & : ( not ( subseq-pos ( create$ pen6-overruled $?gen304 $$$ $?gen305 ) ) ) ) ( positive-defeated $?gen303 & : ( not ( member$ pen6 $?gen303 ) ) ) ) ( test ( eq ( class ?gen301 ) months_in_imprisonment ) ) => ( calc ( bind $?gen306 ( create$ pen6-overruled $?gen304 $?gen305 ) ) ) ?gen301 <- ( months_in_imprisonment ( negative-overruled $?gen306 ) )"))

([pen6-support] of derived-attribute-rule
   (pos-name pen6-support-gen766)
   (depends-on declare zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji months_in_imprisonment)
   (implies months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen6] ) ) ) ?gen300 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ) ?gen301 <- ( months_in_imprisonment ( value 6 ) ( positive-support $?gen303 & : ( not ( subseq-pos ( create$ pen6 ?gen300 $$$ $?gen303 ) ) ) ) ) ( test ( eq ( class ?gen301 ) months_in_imprisonment ) ) => ( calc ( bind $?gen306 ( create$ pen6 ?gen300 $?gen303 ) ) ) ?gen301 <- ( months_in_imprisonment ( positive-support $?gen306 ) )"))

([pen5-defeasibly-dot] of derived-attribute-rule
   (pos-name pen5-defeasibly-dot-gen768)
   (depends-on declare novcana_kazna zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji novcana_kazna)
   (implies novcana_kazna)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen5] ) ) ) ?gen292 <- ( novcana_kazna ( value 0 ) ( positive 1 ) ( positive-derivator pen5 $? ) ) ( test ( eq ( class ?gen292 ) novcana_kazna ) ) ( not ( and ?gen299 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( novcana_kazna ( negative ~ 2 ) ( positive-overruled $?gen294 & : ( not ( member$ pen5 $?gen294 ) ) ) ) ) ) => ?gen292 <- ( novcana_kazna ( positive 0 ) )"))

([pen5-defeasibly] of derived-attribute-rule
   (pos-name pen5-defeasibly-gen770)
   (depends-on declare zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji novcana_kazna)
   (implies novcana_kazna)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen5] ) ) ) ?gen299 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( novcana_kazna ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen294 & : ( not ( member$ pen5 $?gen294 ) ) ) ) ( test ( eq ( class ?gen292 ) novcana_kazna ) ) => ?gen292 <- ( novcana_kazna ( positive 1 ) ( positive-derivator pen5 ?gen299 ) )"))

([pen5-overruled-dot] of derived-attribute-rule
   (pos-name pen5-overruled-dot-gen772)
   (depends-on declare novcana_kazna zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji novcana_kazna)
   (implies novcana_kazna)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen5] ) ) ) ?gen292 <- ( novcana_kazna ( value 0 ) ( negative-support $?gen295 ) ( negative-overruled $?gen296 & : ( subseq-pos ( create$ pen5-overruled $?gen295 $$$ $?gen296 ) ) ) ) ( test ( eq ( class ?gen292 ) novcana_kazna ) ) ( not ( and ?gen299 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( novcana_kazna ( positive-defeated $?gen294 & : ( not ( member$ pen5 $?gen294 ) ) ) ) ) ) => ( calc ( bind $?gen297 ( delete-member$ $?gen296 ( create$ pen5-overruled $?gen295 ) ) ) ) ?gen292 <- ( novcana_kazna ( negative-overruled $?gen297 ) )"))

([pen5-overruled] of derived-attribute-rule
   (pos-name pen5-overruled-gen774)
   (depends-on declare zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji novcana_kazna)
   (implies novcana_kazna)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen5] ) ) ) ?gen299 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( novcana_kazna ( value 0 ) ( negative-support $?gen295 ) ( negative-overruled $?gen296 & : ( not ( subseq-pos ( create$ pen5-overruled $?gen295 $$$ $?gen296 ) ) ) ) ( positive-defeated $?gen294 & : ( not ( member$ pen5 $?gen294 ) ) ) ) ( test ( eq ( class ?gen292 ) novcana_kazna ) ) => ( calc ( bind $?gen297 ( create$ pen5-overruled $?gen295 $?gen296 ) ) ) ?gen292 <- ( novcana_kazna ( negative-overruled $?gen297 ) )"))

([pen5-support] of derived-attribute-rule
   (pos-name pen5-support-gen776)
   (depends-on declare zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji novcana_kazna)
   (implies novcana_kazna)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen5] ) ) ) ?gen291 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ) ?gen292 <- ( novcana_kazna ( value 0 ) ( positive-support $?gen294 & : ( not ( subseq-pos ( create$ pen5 ?gen291 $$$ $?gen294 ) ) ) ) ) ( test ( eq ( class ?gen292 ) novcana_kazna ) ) => ( calc ( bind $?gen297 ( create$ pen5 ?gen291 $?gen294 ) ) ) ?gen292 <- ( novcana_kazna ( positive-support $?gen297 ) )"))

([pen4-defeasibly-dot] of derived-attribute-rule
   (pos-name pen4-defeasibly-dot-gen778)
   (depends-on declare min_years_in_imprisonment zk_153_ucestvovanje_u_tuci min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen4] ) ) ) ?gen283 <- ( min_years_in_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen4 $? ) ) ( test ( eq ( class ?gen283 ) min_years_in_imprisonment ) ) ( not ( and ?gen290 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( min_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen285 & : ( not ( member$ pen4 $?gen285 ) ) ) ) ) ) => ?gen283 <- ( min_years_in_imprisonment ( positive 0 ) )"))

([pen4-defeasibly] of derived-attribute-rule
   (pos-name pen4-defeasibly-gen780)
   (depends-on declare zk_153_ucestvovanje_u_tuci min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen4] ) ) ) ?gen290 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( min_years_in_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen285 & : ( not ( member$ pen4 $?gen285 ) ) ) ) ( test ( eq ( class ?gen283 ) min_years_in_imprisonment ) ) => ?gen283 <- ( min_years_in_imprisonment ( positive 1 ) ( positive-derivator pen4 ?gen290 ) )"))

([pen4-overruled-dot] of derived-attribute-rule
   (pos-name pen4-overruled-dot-gen782)
   (depends-on declare min_years_in_imprisonment zk_153_ucestvovanje_u_tuci min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen4] ) ) ) ?gen283 <- ( min_years_in_imprisonment ( value 3 ) ( negative-support $?gen286 ) ( negative-overruled $?gen287 & : ( subseq-pos ( create$ pen4-overruled $?gen286 $$$ $?gen287 ) ) ) ) ( test ( eq ( class ?gen283 ) min_years_in_imprisonment ) ) ( not ( and ?gen290 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( min_years_in_imprisonment ( positive-defeated $?gen285 & : ( not ( member$ pen4 $?gen285 ) ) ) ) ) ) => ( calc ( bind $?gen288 ( delete-member$ $?gen287 ( create$ pen4-overruled $?gen286 ) ) ) ) ?gen283 <- ( min_years_in_imprisonment ( negative-overruled $?gen288 ) )"))

([pen4-overruled] of derived-attribute-rule
   (pos-name pen4-overruled-gen784)
   (depends-on declare zk_153_ucestvovanje_u_tuci min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen4] ) ) ) ?gen290 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( min_years_in_imprisonment ( value 3 ) ( negative-support $?gen286 ) ( negative-overruled $?gen287 & : ( not ( subseq-pos ( create$ pen4-overruled $?gen286 $$$ $?gen287 ) ) ) ) ( positive-defeated $?gen285 & : ( not ( member$ pen4 $?gen285 ) ) ) ) ( test ( eq ( class ?gen283 ) min_years_in_imprisonment ) ) => ( calc ( bind $?gen288 ( create$ pen4-overruled $?gen286 $?gen287 ) ) ) ?gen283 <- ( min_years_in_imprisonment ( negative-overruled $?gen288 ) )"))

([pen4-support] of derived-attribute-rule
   (pos-name pen4-support-gen786)
   (depends-on declare zk_153_ucestvovanje_u_tuci min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen4] ) ) ) ?gen282 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ) ?gen283 <- ( min_years_in_imprisonment ( value 3 ) ( positive-support $?gen285 & : ( not ( subseq-pos ( create$ pen4 ?gen282 $$$ $?gen285 ) ) ) ) ) ( test ( eq ( class ?gen283 ) min_years_in_imprisonment ) ) => ( calc ( bind $?gen288 ( create$ pen4 ?gen282 $?gen285 ) ) ) ?gen283 <- ( min_years_in_imprisonment ( positive-support $?gen288 ) )"))

([pen3-defeasibly-dot] of derived-attribute-rule
   (pos-name pen3-defeasibly-dot-gen788)
   (depends-on declare min_months_in_imprisonment zk_153_ucestvovanje_u_tuci min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen3] ) ) ) ?gen274 <- ( min_months_in_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen3 $? ) ) ( test ( eq ( class ?gen274 ) min_months_in_imprisonment ) ) ( not ( and ?gen281 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( min_months_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen276 & : ( not ( member$ pen3 $?gen276 ) ) ) ) ) ) => ?gen274 <- ( min_months_in_imprisonment ( positive 0 ) )"))

([pen3-defeasibly] of derived-attribute-rule
   (pos-name pen3-defeasibly-gen790)
   (depends-on declare zk_153_ucestvovanje_u_tuci min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen3] ) ) ) ?gen281 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( min_months_in_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen276 & : ( not ( member$ pen3 $?gen276 ) ) ) ) ( test ( eq ( class ?gen274 ) min_months_in_imprisonment ) ) => ?gen274 <- ( min_months_in_imprisonment ( positive 1 ) ( positive-derivator pen3 ?gen281 ) )"))

([pen3-overruled-dot] of derived-attribute-rule
   (pos-name pen3-overruled-dot-gen792)
   (depends-on declare min_months_in_imprisonment zk_153_ucestvovanje_u_tuci min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen3] ) ) ) ?gen274 <- ( min_months_in_imprisonment ( value 3 ) ( negative-support $?gen277 ) ( negative-overruled $?gen278 & : ( subseq-pos ( create$ pen3-overruled $?gen277 $$$ $?gen278 ) ) ) ) ( test ( eq ( class ?gen274 ) min_months_in_imprisonment ) ) ( not ( and ?gen281 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( min_months_in_imprisonment ( positive-defeated $?gen276 & : ( not ( member$ pen3 $?gen276 ) ) ) ) ) ) => ( calc ( bind $?gen279 ( delete-member$ $?gen278 ( create$ pen3-overruled $?gen277 ) ) ) ) ?gen274 <- ( min_months_in_imprisonment ( negative-overruled $?gen279 ) )"))

([pen3-overruled] of derived-attribute-rule
   (pos-name pen3-overruled-gen794)
   (depends-on declare zk_153_ucestvovanje_u_tuci min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen3] ) ) ) ?gen281 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( min_months_in_imprisonment ( value 3 ) ( negative-support $?gen277 ) ( negative-overruled $?gen278 & : ( not ( subseq-pos ( create$ pen3-overruled $?gen277 $$$ $?gen278 ) ) ) ) ( positive-defeated $?gen276 & : ( not ( member$ pen3 $?gen276 ) ) ) ) ( test ( eq ( class ?gen274 ) min_months_in_imprisonment ) ) => ( calc ( bind $?gen279 ( create$ pen3-overruled $?gen277 $?gen278 ) ) ) ?gen274 <- ( min_months_in_imprisonment ( negative-overruled $?gen279 ) )"))

([pen3-support] of derived-attribute-rule
   (pos-name pen3-support-gen796)
   (depends-on declare zk_153_ucestvovanje_u_tuci min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen3] ) ) ) ?gen273 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ) ?gen274 <- ( min_months_in_imprisonment ( value 3 ) ( positive-support $?gen276 & : ( not ( subseq-pos ( create$ pen3 ?gen273 $$$ $?gen276 ) ) ) ) ) ( test ( eq ( class ?gen274 ) min_months_in_imprisonment ) ) => ( calc ( bind $?gen279 ( create$ pen3 ?gen273 $?gen276 ) ) ) ?gen274 <- ( min_months_in_imprisonment ( positive-support $?gen279 ) )"))

([pen2-defeasibly-dot] of derived-attribute-rule
   (pos-name pen2-defeasibly-dot-gen798)
   (depends-on declare max_years_in_imprisonment zk_145_ubistvo_na_mah max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen2] ) ) ) ?gen265 <- ( max_years_in_imprisonment ( value 8 ) ( positive 1 ) ( positive-derivator pen2 $? ) ) ( test ( eq ( class ?gen265 ) max_years_in_imprisonment ) ) ( not ( and ?gen272 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( max_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen267 & : ( not ( member$ pen2 $?gen267 ) ) ) ) ) ) => ?gen265 <- ( max_years_in_imprisonment ( positive 0 ) )"))

([pen2-defeasibly] of derived-attribute-rule
   (pos-name pen2-defeasibly-gen800)
   (depends-on declare zk_145_ubistvo_na_mah max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen2] ) ) ) ?gen272 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( max_years_in_imprisonment ( value 8 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen267 & : ( not ( member$ pen2 $?gen267 ) ) ) ) ( test ( eq ( class ?gen265 ) max_years_in_imprisonment ) ) => ?gen265 <- ( max_years_in_imprisonment ( positive 1 ) ( positive-derivator pen2 ?gen272 ) )"))

([pen2-overruled-dot] of derived-attribute-rule
   (pos-name pen2-overruled-dot-gen802)
   (depends-on declare max_years_in_imprisonment zk_145_ubistvo_na_mah max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen2] ) ) ) ?gen265 <- ( max_years_in_imprisonment ( value 8 ) ( negative-support $?gen268 ) ( negative-overruled $?gen269 & : ( subseq-pos ( create$ pen2-overruled $?gen268 $$$ $?gen269 ) ) ) ) ( test ( eq ( class ?gen265 ) max_years_in_imprisonment ) ) ( not ( and ?gen272 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( max_years_in_imprisonment ( positive-defeated $?gen267 & : ( not ( member$ pen2 $?gen267 ) ) ) ) ) ) => ( calc ( bind $?gen270 ( delete-member$ $?gen269 ( create$ pen2-overruled $?gen268 ) ) ) ) ?gen265 <- ( max_years_in_imprisonment ( negative-overruled $?gen270 ) )"))

([pen2-overruled] of derived-attribute-rule
   (pos-name pen2-overruled-gen804)
   (depends-on declare zk_145_ubistvo_na_mah max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen2] ) ) ) ?gen272 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( max_years_in_imprisonment ( value 8 ) ( negative-support $?gen268 ) ( negative-overruled $?gen269 & : ( not ( subseq-pos ( create$ pen2-overruled $?gen268 $$$ $?gen269 ) ) ) ) ( positive-defeated $?gen267 & : ( not ( member$ pen2 $?gen267 ) ) ) ) ( test ( eq ( class ?gen265 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen270 ( create$ pen2-overruled $?gen268 $?gen269 ) ) ) ?gen265 <- ( max_years_in_imprisonment ( negative-overruled $?gen270 ) )"))

([pen2-support] of derived-attribute-rule
   (pos-name pen2-support-gen806)
   (depends-on declare zk_145_ubistvo_na_mah max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen2] ) ) ) ?gen264 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ) ?gen265 <- ( max_years_in_imprisonment ( value 8 ) ( positive-support $?gen267 & : ( not ( subseq-pos ( create$ pen2 ?gen264 $$$ $?gen267 ) ) ) ) ) ( test ( eq ( class ?gen265 ) max_years_in_imprisonment ) ) => ( calc ( bind $?gen270 ( create$ pen2 ?gen264 $?gen267 ) ) ) ?gen265 <- ( max_years_in_imprisonment ( positive-support $?gen270 ) )"))

([pen1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen1-defeasibly-dot-gen808)
   (depends-on declare min_years_in_imprisonment zk_145_ubistvo_na_mah min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen1] ) ) ) ?gen256 <- ( min_years_in_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen1 $? ) ) ( test ( eq ( class ?gen256 ) min_years_in_imprisonment ) ) ( not ( and ?gen263 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( min_years_in_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen258 & : ( not ( member$ pen1 $?gen258 ) ) ) ) ) ) => ?gen256 <- ( min_years_in_imprisonment ( positive 0 ) )"))

([pen1-defeasibly] of derived-attribute-rule
   (pos-name pen1-defeasibly-gen810)
   (depends-on declare zk_145_ubistvo_na_mah min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen1] ) ) ) ?gen263 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( min_years_in_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen258 & : ( not ( member$ pen1 $?gen258 ) ) ) ) ( test ( eq ( class ?gen256 ) min_years_in_imprisonment ) ) => ?gen256 <- ( min_years_in_imprisonment ( positive 1 ) ( positive-derivator pen1 ?gen263 ) )"))

([pen1-overruled-dot] of derived-attribute-rule
   (pos-name pen1-overruled-dot-gen812)
   (depends-on declare min_years_in_imprisonment zk_145_ubistvo_na_mah min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen1] ) ) ) ?gen256 <- ( min_years_in_imprisonment ( value 1 ) ( negative-support $?gen259 ) ( negative-overruled $?gen260 & : ( subseq-pos ( create$ pen1-overruled $?gen259 $$$ $?gen260 ) ) ) ) ( test ( eq ( class ?gen256 ) min_years_in_imprisonment ) ) ( not ( and ?gen263 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( min_years_in_imprisonment ( positive-defeated $?gen258 & : ( not ( member$ pen1 $?gen258 ) ) ) ) ) ) => ( calc ( bind $?gen261 ( delete-member$ $?gen260 ( create$ pen1-overruled $?gen259 ) ) ) ) ?gen256 <- ( min_years_in_imprisonment ( negative-overruled $?gen261 ) )"))

([pen1-overruled] of derived-attribute-rule
   (pos-name pen1-overruled-gen814)
   (depends-on declare zk_145_ubistvo_na_mah min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen1] ) ) ) ?gen263 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( min_years_in_imprisonment ( value 1 ) ( negative-support $?gen259 ) ( negative-overruled $?gen260 & : ( not ( subseq-pos ( create$ pen1-overruled $?gen259 $$$ $?gen260 ) ) ) ) ( positive-defeated $?gen258 & : ( not ( member$ pen1 $?gen258 ) ) ) ) ( test ( eq ( class ?gen256 ) min_years_in_imprisonment ) ) => ( calc ( bind $?gen261 ( create$ pen1-overruled $?gen259 $?gen260 ) ) ) ?gen256 <- ( min_years_in_imprisonment ( negative-overruled $?gen261 ) )"))

([pen1-support] of derived-attribute-rule
   (pos-name pen1-support-gen816)
   (depends-on declare zk_145_ubistvo_na_mah min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen1] ) ) ) ?gen255 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ) ?gen256 <- ( min_years_in_imprisonment ( value 1 ) ( positive-support $?gen258 & : ( not ( subseq-pos ( create$ pen1 ?gen255 $$$ $?gen258 ) ) ) ) ) ( test ( eq ( class ?gen256 ) min_years_in_imprisonment ) ) => ( calc ( bind $?gen261 ( create$ pen1 ?gen255 $?gen258 ) ) ) ?gen256 <- ( min_years_in_imprisonment ( positive-support $?gen261 ) )"))

([rule23-defeasibly-dot] of derived-attribute-rule
   (pos-name rule23-defeasibly-dot-gen818)
   (depends-on declare zk_151b_prinudna_sterilizacija lc:case zk_151b_prinudna_sterilizacija)
   (implies zk_151b_prinudna_sterilizacija)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule23] ) ) ) ?gen247 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule23 $? ) ) ( test ( eq ( class ?gen247 ) zk_151b_prinudna_sterilizacija ) ) ( not ( and ?gen254 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:prinudna_sterilizacija \"yes\" ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( zk_151b_prinudna_sterilizacija ( negative ~ 2 ) ( positive-overruled $?gen249 & : ( not ( member$ rule23 $?gen249 ) ) ) ) ) ) => ?gen247 <- ( zk_151b_prinudna_sterilizacija ( positive 0 ) )"))

([rule23-defeasibly] of derived-attribute-rule
   (pos-name rule23-defeasibly-gen820)
   (depends-on declare lc:case zk_151b_prinudna_sterilizacija)
   (implies zk_151b_prinudna_sterilizacija)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule23] ) ) ) ?gen254 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:prinudna_sterilizacija \"yes\" ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen249 & : ( not ( member$ rule23 $?gen249 ) ) ) ) ( test ( eq ( class ?gen247 ) zk_151b_prinudna_sterilizacija ) ) => ?gen247 <- ( zk_151b_prinudna_sterilizacija ( positive 1 ) ( positive-derivator rule23 ?gen254 ) )"))

([rule23-overruled-dot] of derived-attribute-rule
   (pos-name rule23-overruled-dot-gen822)
   (depends-on declare zk_151b_prinudna_sterilizacija lc:case zk_151b_prinudna_sterilizacija)
   (implies zk_151b_prinudna_sterilizacija)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule23] ) ) ) ?gen247 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( negative-support $?gen250 ) ( negative-overruled $?gen251 & : ( subseq-pos ( create$ rule23-overruled $?gen250 $$$ $?gen251 ) ) ) ) ( test ( eq ( class ?gen247 ) zk_151b_prinudna_sterilizacija ) ) ( not ( and ?gen254 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:prinudna_sterilizacija \"yes\" ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( zk_151b_prinudna_sterilizacija ( positive-defeated $?gen249 & : ( not ( member$ rule23 $?gen249 ) ) ) ) ) ) => ( calc ( bind $?gen252 ( delete-member$ $?gen251 ( create$ rule23-overruled $?gen250 ) ) ) ) ?gen247 <- ( zk_151b_prinudna_sterilizacija ( negative-overruled $?gen252 ) )"))

([rule23-overruled] of derived-attribute-rule
   (pos-name rule23-overruled-gen824)
   (depends-on declare lc:case zk_151b_prinudna_sterilizacija)
   (implies zk_151b_prinudna_sterilizacija)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule23] ) ) ) ?gen254 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:prinudna_sterilizacija \"yes\" ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( negative-support $?gen250 ) ( negative-overruled $?gen251 & : ( not ( subseq-pos ( create$ rule23-overruled $?gen250 $$$ $?gen251 ) ) ) ) ( positive-defeated $?gen249 & : ( not ( member$ rule23 $?gen249 ) ) ) ) ( test ( eq ( class ?gen247 ) zk_151b_prinudna_sterilizacija ) ) => ( calc ( bind $?gen252 ( create$ rule23-overruled $?gen250 $?gen251 ) ) ) ?gen247 <- ( zk_151b_prinudna_sterilizacija ( negative-overruled $?gen252 ) )"))

([rule23-support] of derived-attribute-rule
   (pos-name rule23-support-gen826)
   (depends-on declare lc:case zk_151b_prinudna_sterilizacija)
   (implies zk_151b_prinudna_sterilizacija)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule23] ) ) ) ?gen246 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:prinudna_sterilizacija \"yes\" ) ) ?gen247 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ( positive-support $?gen249 & : ( not ( subseq-pos ( create$ rule23 ?gen246 $$$ $?gen249 ) ) ) ) ) ( test ( eq ( class ?gen247 ) zk_151b_prinudna_sterilizacija ) ) => ( calc ( bind $?gen252 ( create$ rule23 ?gen246 $?gen249 ) ) ) ?gen247 <- ( zk_151b_prinudna_sterilizacija ( positive-support $?gen252 ) )"))

([rule22-defeasibly-dot] of derived-attribute-rule
   (pos-name rule22-defeasibly-dot-gen828)
   (depends-on declare zk_151a_sakacenje_zenskih_genitalija lc:case zk_151a_sakacenje_zenskih_genitalija)
   (implies zk_151a_sakacenje_zenskih_genitalija)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule22] ) ) ) ?gen238 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule22 $? ) ) ( test ( eq ( class ?gen238 ) zk_151a_sakacenje_zenskih_genitalija ) ) ( not ( and ?gen245 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:sakacenje_zenskih_genitalija \"yes\" ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( zk_151a_sakacenje_zenskih_genitalija ( negative ~ 2 ) ( positive-overruled $?gen240 & : ( not ( member$ rule22 $?gen240 ) ) ) ) ) ) => ?gen238 <- ( zk_151a_sakacenje_zenskih_genitalija ( positive 0 ) )"))

([rule22-defeasibly] of derived-attribute-rule
   (pos-name rule22-defeasibly-gen830)
   (depends-on declare lc:case zk_151a_sakacenje_zenskih_genitalija)
   (implies zk_151a_sakacenje_zenskih_genitalija)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule22] ) ) ) ?gen245 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:sakacenje_zenskih_genitalija \"yes\" ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen240 & : ( not ( member$ rule22 $?gen240 ) ) ) ) ( test ( eq ( class ?gen238 ) zk_151a_sakacenje_zenskih_genitalija ) ) => ?gen238 <- ( zk_151a_sakacenje_zenskih_genitalija ( positive 1 ) ( positive-derivator rule22 ?gen245 ) )"))

([rule22-overruled-dot] of derived-attribute-rule
   (pos-name rule22-overruled-dot-gen832)
   (depends-on declare zk_151a_sakacenje_zenskih_genitalija lc:case zk_151a_sakacenje_zenskih_genitalija)
   (implies zk_151a_sakacenje_zenskih_genitalija)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule22] ) ) ) ?gen238 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( negative-support $?gen241 ) ( negative-overruled $?gen242 & : ( subseq-pos ( create$ rule22-overruled $?gen241 $$$ $?gen242 ) ) ) ) ( test ( eq ( class ?gen238 ) zk_151a_sakacenje_zenskih_genitalija ) ) ( not ( and ?gen245 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:sakacenje_zenskih_genitalija \"yes\" ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( zk_151a_sakacenje_zenskih_genitalija ( positive-defeated $?gen240 & : ( not ( member$ rule22 $?gen240 ) ) ) ) ) ) => ( calc ( bind $?gen243 ( delete-member$ $?gen242 ( create$ rule22-overruled $?gen241 ) ) ) ) ?gen238 <- ( zk_151a_sakacenje_zenskih_genitalija ( negative-overruled $?gen243 ) )"))

([rule22-overruled] of derived-attribute-rule
   (pos-name rule22-overruled-gen834)
   (depends-on declare lc:case zk_151a_sakacenje_zenskih_genitalija)
   (implies zk_151a_sakacenje_zenskih_genitalija)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule22] ) ) ) ?gen245 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:sakacenje_zenskih_genitalija \"yes\" ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( negative-support $?gen241 ) ( negative-overruled $?gen242 & : ( not ( subseq-pos ( create$ rule22-overruled $?gen241 $$$ $?gen242 ) ) ) ) ( positive-defeated $?gen240 & : ( not ( member$ rule22 $?gen240 ) ) ) ) ( test ( eq ( class ?gen238 ) zk_151a_sakacenje_zenskih_genitalija ) ) => ( calc ( bind $?gen243 ( create$ rule22-overruled $?gen241 $?gen242 ) ) ) ?gen238 <- ( zk_151a_sakacenje_zenskih_genitalija ( negative-overruled $?gen243 ) )"))

([rule22-support] of derived-attribute-rule
   (pos-name rule22-support-gen836)
   (depends-on declare lc:case zk_151a_sakacenje_zenskih_genitalija)
   (implies zk_151a_sakacenje_zenskih_genitalija)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule22] ) ) ) ?gen237 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:sakacenje_zenskih_genitalija \"yes\" ) ) ?gen238 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ( positive-support $?gen240 & : ( not ( subseq-pos ( create$ rule22 ?gen237 $$$ $?gen240 ) ) ) ) ) ( test ( eq ( class ?gen238 ) zk_151a_sakacenje_zenskih_genitalija ) ) => ( calc ( bind $?gen243 ( create$ rule22 ?gen237 $?gen240 ) ) ) ?gen238 <- ( zk_151a_sakacenje_zenskih_genitalija ( positive-support $?gen243 ) )"))

([rule21-defeasibly-dot] of derived-attribute-rule
   (pos-name rule21-defeasibly-dot-gen838)
   (depends-on declare zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice lc:case lc:case lc:case lc:case zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule21] ) ) ) ?gen223 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule21 $? ) ) ( test ( eq ( class ?gen223 ) zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ) ) ( not ( and ?gen230 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen232 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen231 & : ( >= ?gen231 1 ) ) ) ?gen234 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen236 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen223 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( negative ~ 2 ) ( positive-overruled $?gen225 & : ( not ( member$ rule21 $?gen225 ) ) ) ) ) ) => ?gen223 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( positive 0 ) )"))

([rule21-defeasibly] of derived-attribute-rule
   (pos-name rule21-defeasibly-gen840)
   (depends-on declare lc:case lc:case lc:case lc:case zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule21] ) ) ) ?gen230 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen232 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen231 & : ( >= ?gen231 1 ) ) ) ?gen234 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen236 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen223 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen225 & : ( not ( member$ rule21 $?gen225 ) ) ) ) ( test ( eq ( class ?gen223 ) zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ) ) => ?gen223 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( positive 1 ) ( positive-derivator rule21 ?gen230 ?gen232 ?gen234 ?gen236 ) )"))

([rule21-overruled-dot] of derived-attribute-rule
   (pos-name rule21-overruled-dot-gen842)
   (depends-on declare zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice lc:case lc:case lc:case lc:case zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule21] ) ) ) ?gen223 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( negative-support $?gen226 ) ( negative-overruled $?gen227 & : ( subseq-pos ( create$ rule21-overruled $?gen226 $$$ $?gen227 ) ) ) ) ( test ( eq ( class ?gen223 ) zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ) ) ( not ( and ?gen230 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen232 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen231 & : ( >= ?gen231 1 ) ) ) ?gen234 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen236 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen223 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( positive-defeated $?gen225 & : ( not ( member$ rule21 $?gen225 ) ) ) ) ) ) => ( calc ( bind $?gen228 ( delete-member$ $?gen227 ( create$ rule21-overruled $?gen226 ) ) ) ) ?gen223 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( negative-overruled $?gen228 ) )"))

([rule21-overruled] of derived-attribute-rule
   (pos-name rule21-overruled-gen844)
   (depends-on declare lc:case lc:case lc:case lc:case zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule21] ) ) ) ?gen230 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen232 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen231 & : ( >= ?gen231 1 ) ) ) ?gen234 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen236 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen223 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( negative-support $?gen226 ) ( negative-overruled $?gen227 & : ( not ( subseq-pos ( create$ rule21-overruled $?gen226 $$$ $?gen227 ) ) ) ) ( positive-defeated $?gen225 & : ( not ( member$ rule21 $?gen225 ) ) ) ) ( test ( eq ( class ?gen223 ) zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ) ) => ( calc ( bind $?gen228 ( create$ rule21-overruled $?gen226 $?gen227 ) ) ) ?gen223 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( negative-overruled $?gen228 ) )"))

([rule21-support] of derived-attribute-rule
   (pos-name rule21-support-gen846)
   (depends-on declare lc:case lc:case lc:case lc:case zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule21] ) ) ) ?gen219 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen220 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ?gen221 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ) ?gen222 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ) ?gen223 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive-support $?gen225 & : ( not ( subseq-pos ( create$ rule21 ?gen219 ?gen220 ?gen221 ?gen222 $$$ $?gen225 ) ) ) ) ) ( test ( eq ( class ?gen223 ) zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ) ) => ( calc ( bind $?gen228 ( create$ rule21 ?gen219 ?gen220 ?gen221 ?gen222 $?gen225 ) ) ) ?gen223 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( positive-support $?gen228 ) )"))

([rule20-defeasibly-dot] of derived-attribute-rule
   (pos-name rule20-defeasibly-dot-gen848)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice lc:case lc:case zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule20] ) ) ) ?gen209 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule20 $? ) ) ( test ( eq ( class ?gen209 ) zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ) ( not ( and ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ?gen218 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen209 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( negative ~ 2 ) ( positive-overruled $?gen211 & : ( not ( member$ rule20 $?gen211 ) ) ) ) ) ) => ?gen209 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( positive 0 ) )"))

([rule20-defeasibly] of derived-attribute-rule
   (pos-name rule20-defeasibly-gen850)
   (depends-on declare lc:case lc:case zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule20] ) ) ) ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ?gen218 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen209 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen211 & : ( not ( member$ rule20 $?gen211 ) ) ) ) ( test ( eq ( class ?gen209 ) zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ) => ?gen209 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( positive 1 ) ( positive-derivator rule20 ?gen216 ?gen218 ) )"))

([rule20-overruled-dot] of derived-attribute-rule
   (pos-name rule20-overruled-dot-gen852)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice lc:case lc:case zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule20] ) ) ) ?gen209 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( negative-support $?gen212 ) ( negative-overruled $?gen213 & : ( subseq-pos ( create$ rule20-overruled $?gen212 $$$ $?gen213 ) ) ) ) ( test ( eq ( class ?gen209 ) zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ) ( not ( and ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ?gen218 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen209 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( positive-defeated $?gen211 & : ( not ( member$ rule20 $?gen211 ) ) ) ) ) ) => ( calc ( bind $?gen214 ( delete-member$ $?gen213 ( create$ rule20-overruled $?gen212 ) ) ) ) ?gen209 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( negative-overruled $?gen214 ) )"))

([rule20-overruled] of derived-attribute-rule
   (pos-name rule20-overruled-gen854)
   (depends-on declare lc:case lc:case zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule20] ) ) ) ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ?gen218 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen209 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( negative-support $?gen212 ) ( negative-overruled $?gen213 & : ( not ( subseq-pos ( create$ rule20-overruled $?gen212 $$$ $?gen213 ) ) ) ) ( positive-defeated $?gen211 & : ( not ( member$ rule20 $?gen211 ) ) ) ) ( test ( eq ( class ?gen209 ) zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ) => ( calc ( bind $?gen214 ( create$ rule20-overruled $?gen212 $?gen213 ) ) ) ?gen209 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( negative-overruled $?gen214 ) )"))

([rule20-support] of derived-attribute-rule
   (pos-name rule20-support-gen856)
   (depends-on declare lc:case lc:case zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule20] ) ) ) ?gen207 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ?gen208 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ) ?gen209 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive-support $?gen211 & : ( not ( subseq-pos ( create$ rule20 ?gen207 ?gen208 $$$ $?gen211 ) ) ) ) ) ( test ( eq ( class ?gen209 ) zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ) => ( calc ( bind $?gen214 ( create$ rule20 ?gen207 ?gen208 $?gen211 ) ) ) ?gen209 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( positive-support $?gen214 ) )"))

([rule19-defeasibly-dot] of derived-attribute-rule
   (pos-name rule19-defeasibly-dot-gen858)
   (depends-on declare zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice lc:case lc:case zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule19] ) ) ) ?gen197 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule19 $? ) ) ( test ( eq ( class ?gen197 ) zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ) ( not ( and ?gen204 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen203 & : ( >= ?gen203 1 ) ) ) ?gen206 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen197 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( negative ~ 2 ) ( positive-overruled $?gen199 & : ( not ( member$ rule19 $?gen199 ) ) ) ) ) ) => ?gen197 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( positive 0 ) )"))

([rule19-defeasibly] of derived-attribute-rule
   (pos-name rule19-defeasibly-gen860)
   (depends-on declare lc:case lc:case zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule19] ) ) ) ?gen204 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen203 & : ( >= ?gen203 1 ) ) ) ?gen206 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen197 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen199 & : ( not ( member$ rule19 $?gen199 ) ) ) ) ( test ( eq ( class ?gen197 ) zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ) => ?gen197 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( positive 1 ) ( positive-derivator rule19 ?gen204 ?gen206 ) )"))

([rule19-overruled-dot] of derived-attribute-rule
   (pos-name rule19-overruled-dot-gen862)
   (depends-on declare zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice lc:case lc:case zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule19] ) ) ) ?gen197 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( negative-support $?gen200 ) ( negative-overruled $?gen201 & : ( subseq-pos ( create$ rule19-overruled $?gen200 $$$ $?gen201 ) ) ) ) ( test ( eq ( class ?gen197 ) zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ) ( not ( and ?gen204 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen203 & : ( >= ?gen203 1 ) ) ) ?gen206 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen197 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( positive-defeated $?gen199 & : ( not ( member$ rule19 $?gen199 ) ) ) ) ) ) => ( calc ( bind $?gen202 ( delete-member$ $?gen201 ( create$ rule19-overruled $?gen200 ) ) ) ) ?gen197 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( negative-overruled $?gen202 ) )"))

([rule19-overruled] of derived-attribute-rule
   (pos-name rule19-overruled-gen864)
   (depends-on declare lc:case lc:case zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule19] ) ) ) ?gen204 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen203 & : ( >= ?gen203 1 ) ) ) ?gen206 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen197 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( negative-support $?gen200 ) ( negative-overruled $?gen201 & : ( not ( subseq-pos ( create$ rule19-overruled $?gen200 $$$ $?gen201 ) ) ) ) ( positive-defeated $?gen199 & : ( not ( member$ rule19 $?gen199 ) ) ) ) ( test ( eq ( class ?gen197 ) zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ) => ( calc ( bind $?gen202 ( create$ rule19-overruled $?gen200 $?gen201 ) ) ) ?gen197 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( negative-overruled $?gen202 ) )"))

([rule19-support] of derived-attribute-rule
   (pos-name rule19-support-gen866)
   (depends-on declare lc:case lc:case zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule19] ) ) ) ?gen195 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen196 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ) ?gen197 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ( positive-support $?gen199 & : ( not ( subseq-pos ( create$ rule19 ?gen195 ?gen196 $$$ $?gen199 ) ) ) ) ) ( test ( eq ( class ?gen197 ) zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ) => ( calc ( bind $?gen202 ( create$ rule19 ?gen195 ?gen196 $?gen199 ) ) ) ?gen197 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( positive-support $?gen202 ) )"))

([rule18-defeasibly-dot] of derived-attribute-rule
   (pos-name rule18-defeasibly-dot-gen868)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata lc:case lc:case lc:case zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata)
   (implies zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule18] ) ) ) ?gen183 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule18 $? ) ) ( test ( eq ( class ?gen183 ) zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ) ) ( not ( and ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata \"yes\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen183 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( negative ~ 2 ) ( positive-overruled $?gen185 & : ( not ( member$ rule18 $?gen185 ) ) ) ) ) ) => ?gen183 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( positive 0 ) )"))

([rule18-defeasibly] of derived-attribute-rule
   (pos-name rule18-defeasibly-gen870)
   (depends-on declare lc:case lc:case lc:case zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata)
   (implies zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule18] ) ) ) ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata \"yes\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen183 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen185 & : ( not ( member$ rule18 $?gen185 ) ) ) ) ( test ( eq ( class ?gen183 ) zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ) ) => ?gen183 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( positive 1 ) ( positive-derivator rule18 ?gen190 ?gen192 ?gen194 ) )"))

([rule18-overruled-dot] of derived-attribute-rule
   (pos-name rule18-overruled-dot-gen872)
   (depends-on declare zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata lc:case lc:case lc:case zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata)
   (implies zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule18] ) ) ) ?gen183 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ( negative-support $?gen186 ) ( negative-overruled $?gen187 & : ( subseq-pos ( create$ rule18-overruled $?gen186 $$$ $?gen187 ) ) ) ) ( test ( eq ( class ?gen183 ) zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ) ) ( not ( and ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata \"yes\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen183 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( positive-defeated $?gen185 & : ( not ( member$ rule18 $?gen185 ) ) ) ) ) ) => ( calc ( bind $?gen188 ( delete-member$ $?gen187 ( create$ rule18-overruled $?gen186 ) ) ) ) ?gen183 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( negative-overruled $?gen188 ) )"))

([rule18-overruled] of derived-attribute-rule
   (pos-name rule18-overruled-gen874)
   (depends-on declare lc:case lc:case lc:case zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata)
   (implies zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule18] ) ) ) ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata \"yes\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen183 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ( negative-support $?gen186 ) ( negative-overruled $?gen187 & : ( not ( subseq-pos ( create$ rule18-overruled $?gen186 $$$ $?gen187 ) ) ) ) ( positive-defeated $?gen185 & : ( not ( member$ rule18 $?gen185 ) ) ) ) ( test ( eq ( class ?gen183 ) zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ) ) => ( calc ( bind $?gen188 ( create$ rule18-overruled $?gen186 $?gen187 ) ) ) ?gen183 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( negative-overruled $?gen188 ) )"))

([rule18-support] of derived-attribute-rule
   (pos-name rule18-support-gen876)
   (depends-on declare lc:case lc:case lc:case zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata)
   (implies zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule18] ) ) ) ?gen180 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen181 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ?gen182 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata \"yes\" ) ) ?gen183 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ( positive-support $?gen185 & : ( not ( subseq-pos ( create$ rule18 ?gen180 ?gen181 ?gen182 $$$ $?gen185 ) ) ) ) ) ( test ( eq ( class ?gen183 ) zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ) ) => ( calc ( bind $?gen188 ( create$ rule18 ?gen180 ?gen181 ?gen182 $?gen185 ) ) ) ?gen183 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( positive-support $?gen188 ) )"))

([rule17-defeasibly-dot] of derived-attribute-rule
   (pos-name rule17-defeasibly-dot-gen878)
   (depends-on declare zk_151_teska_tjelesna_povreda_i_nastupila_smrt lc:case lc:case lc:case zk_151_teska_tjelesna_povreda_i_nastupila_smrt)
   (implies zk_151_teska_tjelesna_povreda_i_nastupila_smrt)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule17] ) ) ) ?gen168 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule17 $? ) ) ( test ( eq ( class ?gen168 ) zk_151_teska_tjelesna_povreda_i_nastupila_smrt ) ) ( not ( and ?gen175 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen174 & : ( >= ?gen174 1 ) ) ) ?gen177 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen176 & : ( >= ?gen176 1 ) ) ) ?gen179 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen168 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( negative ~ 2 ) ( positive-overruled $?gen170 & : ( not ( member$ rule17 $?gen170 ) ) ) ) ) ) => ?gen168 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( positive 0 ) )"))

([rule17-defeasibly] of derived-attribute-rule
   (pos-name rule17-defeasibly-gen880)
   (depends-on declare lc:case lc:case lc:case zk_151_teska_tjelesna_povreda_i_nastupila_smrt)
   (implies zk_151_teska_tjelesna_povreda_i_nastupila_smrt)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule17] ) ) ) ?gen175 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen174 & : ( >= ?gen174 1 ) ) ) ?gen177 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen176 & : ( >= ?gen176 1 ) ) ) ?gen179 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen168 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen170 & : ( not ( member$ rule17 $?gen170 ) ) ) ) ( test ( eq ( class ?gen168 ) zk_151_teska_tjelesna_povreda_i_nastupila_smrt ) ) => ?gen168 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( positive 1 ) ( positive-derivator rule17 ?gen175 ?gen177 ?gen179 ) )"))

([rule17-overruled-dot] of derived-attribute-rule
   (pos-name rule17-overruled-dot-gen882)
   (depends-on declare zk_151_teska_tjelesna_povreda_i_nastupila_smrt lc:case lc:case lc:case zk_151_teska_tjelesna_povreda_i_nastupila_smrt)
   (implies zk_151_teska_tjelesna_povreda_i_nastupila_smrt)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule17] ) ) ) ?gen168 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( negative-support $?gen171 ) ( negative-overruled $?gen172 & : ( subseq-pos ( create$ rule17-overruled $?gen171 $$$ $?gen172 ) ) ) ) ( test ( eq ( class ?gen168 ) zk_151_teska_tjelesna_povreda_i_nastupila_smrt ) ) ( not ( and ?gen175 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen174 & : ( >= ?gen174 1 ) ) ) ?gen177 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen176 & : ( >= ?gen176 1 ) ) ) ?gen179 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen168 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( positive-defeated $?gen170 & : ( not ( member$ rule17 $?gen170 ) ) ) ) ) ) => ( calc ( bind $?gen173 ( delete-member$ $?gen172 ( create$ rule17-overruled $?gen171 ) ) ) ) ?gen168 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( negative-overruled $?gen173 ) )"))

([rule17-overruled] of derived-attribute-rule
   (pos-name rule17-overruled-gen884)
   (depends-on declare lc:case lc:case lc:case zk_151_teska_tjelesna_povreda_i_nastupila_smrt)
   (implies zk_151_teska_tjelesna_povreda_i_nastupila_smrt)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule17] ) ) ) ?gen175 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen174 & : ( >= ?gen174 1 ) ) ) ?gen177 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen176 & : ( >= ?gen176 1 ) ) ) ?gen179 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen168 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( negative-support $?gen171 ) ( negative-overruled $?gen172 & : ( not ( subseq-pos ( create$ rule17-overruled $?gen171 $$$ $?gen172 ) ) ) ) ( positive-defeated $?gen170 & : ( not ( member$ rule17 $?gen170 ) ) ) ) ( test ( eq ( class ?gen168 ) zk_151_teska_tjelesna_povreda_i_nastupila_smrt ) ) => ( calc ( bind $?gen173 ( create$ rule17-overruled $?gen171 $?gen172 ) ) ) ?gen168 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( negative-overruled $?gen173 ) )"))

([rule17-support] of derived-attribute-rule
   (pos-name rule17-support-gen886)
   (depends-on declare lc:case lc:case lc:case zk_151_teska_tjelesna_povreda_i_nastupila_smrt)
   (implies zk_151_teska_tjelesna_povreda_i_nastupila_smrt)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule17] ) ) ) ?gen165 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen166 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ) ?gen168 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ( positive-support $?gen170 & : ( not ( subseq-pos ( create$ rule17 ?gen165 ?gen166 ?gen167 $$$ $?gen170 ) ) ) ) ) ( test ( eq ( class ?gen168 ) zk_151_teska_tjelesna_povreda_i_nastupila_smrt ) ) => ( calc ( bind $?gen173 ( create$ rule17 ?gen165 ?gen166 ?gen167 $?gen170 ) ) ) ?gen168 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( positive-support $?gen173 ) )"))

([rule16-defeasibly-dot] of derived-attribute-rule
   (pos-name rule16-defeasibly-dot-gen888)
   (depends-on declare zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost lc:case zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (implies zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule16] ) ) ) ?gen157 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule16 $? ) ) ( test ( eq ( class ?gen157 ) zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ) ( not ( and ?gen164 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"no\" ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( positive ~ 2 ) ( negative-overruled $?gen159 & : ( not ( member$ rule16 $?gen159 ) ) ) ) ) ) => ?gen157 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( negative 0 ) )"))

([rule16-defeasibly] of derived-attribute-rule
   (pos-name rule16-defeasibly-gen890)
   (depends-on declare lc:case zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (implies zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule16] ) ) ) ?gen164 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"no\" ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen159 & : ( not ( member$ rule16 $?gen159 ) ) ) ) ( test ( eq ( class ?gen157 ) zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ) => ?gen157 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( negative 1 ) ( negative-derivator rule16 ?gen164 ) )"))

([rule16-overruled-dot] of derived-attribute-rule
   (pos-name rule16-overruled-dot-gen892)
   (depends-on declare zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost lc:case zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (implies zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule16] ) ) ) ?gen157 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive-support $?gen160 ) ( positive-overruled $?gen161 & : ( subseq-pos ( create$ rule16-overruled $?gen160 $$$ $?gen161 ) ) ) ) ( test ( eq ( class ?gen157 ) zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ) ( not ( and ?gen164 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"no\" ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( negative-defeated $?gen159 & : ( not ( member$ rule16 $?gen159 ) ) ) ) ) ) => ( calc ( bind $?gen162 ( delete-member$ $?gen161 ( create$ rule16-overruled $?gen160 ) ) ) ) ?gen157 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( positive-overruled $?gen162 ) )"))

([rule16-overruled] of derived-attribute-rule
   (pos-name rule16-overruled-gen894)
   (depends-on declare lc:case zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (implies zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule16] ) ) ) ?gen164 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"no\" ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive-support $?gen160 ) ( positive-overruled $?gen161 & : ( not ( subseq-pos ( create$ rule16-overruled $?gen160 $$$ $?gen161 ) ) ) ) ( negative-defeated $?gen159 & : ( not ( member$ rule16 $?gen159 ) ) ) ) ( test ( eq ( class ?gen157 ) zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ) => ( calc ( bind $?gen162 ( create$ rule16-overruled $?gen160 $?gen161 ) ) ) ?gen157 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( positive-overruled $?gen162 ) )"))

([rule16-support] of derived-attribute-rule
   (pos-name rule16-support-gen896)
   (depends-on declare lc:case zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (implies zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule16] ) ) ) ?gen156 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"no\" ) ) ?gen157 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( negative-support $?gen159 & : ( not ( subseq-pos ( create$ rule16 ?gen156 $$$ $?gen159 ) ) ) ) ) ( test ( eq ( class ?gen157 ) zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ) => ( calc ( bind $?gen162 ( create$ rule16 ?gen156 $?gen159 ) ) ) ?gen157 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( negative-support $?gen162 ) )"))

([rule15-defeasibly-dot] of derived-attribute-rule
   (pos-name rule15-defeasibly-dot-gen898)
   (depends-on declare zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost lc:case zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (implies zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule15] ) ) ) ?gen148 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule15 $? ) ) ( test ( eq ( class ?gen148 ) zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ) ( not ( and ?gen155 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( negative ~ 2 ) ( positive-overruled $?gen150 & : ( not ( member$ rule15 $?gen150 ) ) ) ) ) ) => ?gen148 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( positive 0 ) )"))

([rule15-defeasibly] of derived-attribute-rule
   (pos-name rule15-defeasibly-gen900)
   (depends-on declare lc:case zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (implies zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule15] ) ) ) ?gen155 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen150 & : ( not ( member$ rule15 $?gen150 ) ) ) ) ( test ( eq ( class ?gen148 ) zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ) => ?gen148 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( positive 1 ) ( positive-derivator rule15 ?gen155 ) )"))

([rule15-overruled-dot] of derived-attribute-rule
   (pos-name rule15-overruled-dot-gen902)
   (depends-on declare zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost lc:case zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (implies zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule15] ) ) ) ?gen148 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( negative-support $?gen151 ) ( negative-overruled $?gen152 & : ( subseq-pos ( create$ rule15-overruled $?gen151 $$$ $?gen152 ) ) ) ) ( test ( eq ( class ?gen148 ) zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ) ( not ( and ?gen155 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( positive-defeated $?gen150 & : ( not ( member$ rule15 $?gen150 ) ) ) ) ) ) => ( calc ( bind $?gen153 ( delete-member$ $?gen152 ( create$ rule15-overruled $?gen151 ) ) ) ) ?gen148 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( negative-overruled $?gen153 ) )"))

([rule15-overruled] of derived-attribute-rule
   (pos-name rule15-overruled-gen904)
   (depends-on declare lc:case zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (implies zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule15] ) ) ) ?gen155 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( negative-support $?gen151 ) ( negative-overruled $?gen152 & : ( not ( subseq-pos ( create$ rule15-overruled $?gen151 $$$ $?gen152 ) ) ) ) ( positive-defeated $?gen150 & : ( not ( member$ rule15 $?gen150 ) ) ) ) ( test ( eq ( class ?gen148 ) zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ) => ( calc ( bind $?gen153 ( create$ rule15-overruled $?gen151 $?gen152 ) ) ) ?gen148 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( negative-overruled $?gen153 ) )"))

([rule15-support] of derived-attribute-rule
   (pos-name rule15-support-gen906)
   (depends-on declare lc:case zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (implies zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule15] ) ) ) ?gen147 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ?gen148 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ( positive-support $?gen150 & : ( not ( subseq-pos ( create$ rule15 ?gen147 $$$ $?gen150 ) ) ) ) ) ( test ( eq ( class ?gen148 ) zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ) => ( calc ( bind $?gen153 ( create$ rule15 ?gen147 $?gen150 ) ) ) ?gen148 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( positive-support $?gen153 ) )"))

([rule14-defeasibly-dot] of derived-attribute-rule
   (pos-name rule14-defeasibly-dot-gen908)
   (depends-on declare zk_151_teska_tjelesna_povreda lc:case zk_151_teska_tjelesna_povreda)
   (implies zk_151_teska_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule14] ) ) ) ?gen139 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule14 $? ) ) ( test ( eq ( class ?gen139 ) zk_151_teska_tjelesna_povreda ) ) ( not ( and ?gen146 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( zk_151_teska_tjelesna_povreda ( positive ~ 2 ) ( negative-overruled $?gen141 & : ( not ( member$ rule14 $?gen141 ) ) ) ) ) ) => ?gen139 <- ( zk_151_teska_tjelesna_povreda ( negative 0 ) )"))

([rule14-defeasibly] of derived-attribute-rule
   (pos-name rule14-defeasibly-gen910)
   (depends-on declare lc:case zk_151_teska_tjelesna_povreda)
   (implies zk_151_teska_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule14] ) ) ) ?gen146 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen141 & : ( not ( member$ rule14 $?gen141 ) ) ) ) ( test ( eq ( class ?gen139 ) zk_151_teska_tjelesna_povreda ) ) => ?gen139 <- ( zk_151_teska_tjelesna_povreda ( negative 1 ) ( negative-derivator rule14 ?gen146 ) )"))

([rule14-overruled-dot] of derived-attribute-rule
   (pos-name rule14-overruled-dot-gen912)
   (depends-on declare zk_151_teska_tjelesna_povreda lc:case zk_151_teska_tjelesna_povreda)
   (implies zk_151_teska_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule14] ) ) ) ?gen139 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive-support $?gen142 ) ( positive-overruled $?gen143 & : ( subseq-pos ( create$ rule14-overruled $?gen142 $$$ $?gen143 ) ) ) ) ( test ( eq ( class ?gen139 ) zk_151_teska_tjelesna_povreda ) ) ( not ( and ?gen146 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( zk_151_teska_tjelesna_povreda ( negative-defeated $?gen141 & : ( not ( member$ rule14 $?gen141 ) ) ) ) ) ) => ( calc ( bind $?gen144 ( delete-member$ $?gen143 ( create$ rule14-overruled $?gen142 ) ) ) ) ?gen139 <- ( zk_151_teska_tjelesna_povreda ( positive-overruled $?gen144 ) )"))

([rule14-overruled] of derived-attribute-rule
   (pos-name rule14-overruled-gen914)
   (depends-on declare lc:case zk_151_teska_tjelesna_povreda)
   (implies zk_151_teska_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule14] ) ) ) ?gen146 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive-support $?gen142 ) ( positive-overruled $?gen143 & : ( not ( subseq-pos ( create$ rule14-overruled $?gen142 $$$ $?gen143 ) ) ) ) ( negative-defeated $?gen141 & : ( not ( member$ rule14 $?gen141 ) ) ) ) ( test ( eq ( class ?gen139 ) zk_151_teska_tjelesna_povreda ) ) => ( calc ( bind $?gen144 ( create$ rule14-overruled $?gen142 $?gen143 ) ) ) ?gen139 <- ( zk_151_teska_tjelesna_povreda ( positive-overruled $?gen144 ) )"))

([rule14-support] of derived-attribute-rule
   (pos-name rule14-support-gen916)
   (depends-on declare lc:case zk_151_teska_tjelesna_povreda)
   (implies zk_151_teska_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule14] ) ) ) ?gen138 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ) ?gen139 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( negative-support $?gen141 & : ( not ( subseq-pos ( create$ rule14 ?gen138 $$$ $?gen141 ) ) ) ) ) ( test ( eq ( class ?gen139 ) zk_151_teska_tjelesna_povreda ) ) => ( calc ( bind $?gen144 ( create$ rule14 ?gen138 $?gen141 ) ) ) ?gen139 <- ( zk_151_teska_tjelesna_povreda ( negative-support $?gen144 ) )"))

([rule13-defeasibly-dot] of derived-attribute-rule
   (pos-name rule13-defeasibly-dot-gen918)
   (depends-on declare zk_151_teska_tjelesna_povreda lc:case zk_151_teska_tjelesna_povreda)
   (implies zk_151_teska_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule13] ) ) ) ?gen130 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule13 $? ) ) ( test ( eq ( class ?gen130 ) zk_151_teska_tjelesna_povreda ) ) ( not ( and ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( zk_151_teska_tjelesna_povreda ( negative ~ 2 ) ( positive-overruled $?gen132 & : ( not ( member$ rule13 $?gen132 ) ) ) ) ) ) => ?gen130 <- ( zk_151_teska_tjelesna_povreda ( positive 0 ) )"))

([rule13-defeasibly] of derived-attribute-rule
   (pos-name rule13-defeasibly-gen920)
   (depends-on declare lc:case zk_151_teska_tjelesna_povreda)
   (implies zk_151_teska_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule13] ) ) ) ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen132 & : ( not ( member$ rule13 $?gen132 ) ) ) ) ( test ( eq ( class ?gen130 ) zk_151_teska_tjelesna_povreda ) ) => ?gen130 <- ( zk_151_teska_tjelesna_povreda ( positive 1 ) ( positive-derivator rule13 ?gen137 ) )"))

([rule13-overruled-dot] of derived-attribute-rule
   (pos-name rule13-overruled-dot-gen922)
   (depends-on declare zk_151_teska_tjelesna_povreda lc:case zk_151_teska_tjelesna_povreda)
   (implies zk_151_teska_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule13] ) ) ) ?gen130 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( negative-support $?gen133 ) ( negative-overruled $?gen134 & : ( subseq-pos ( create$ rule13-overruled $?gen133 $$$ $?gen134 ) ) ) ) ( test ( eq ( class ?gen130 ) zk_151_teska_tjelesna_povreda ) ) ( not ( and ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( zk_151_teska_tjelesna_povreda ( positive-defeated $?gen132 & : ( not ( member$ rule13 $?gen132 ) ) ) ) ) ) => ( calc ( bind $?gen135 ( delete-member$ $?gen134 ( create$ rule13-overruled $?gen133 ) ) ) ) ?gen130 <- ( zk_151_teska_tjelesna_povreda ( negative-overruled $?gen135 ) )"))

([rule13-overruled] of derived-attribute-rule
   (pos-name rule13-overruled-gen924)
   (depends-on declare lc:case zk_151_teska_tjelesna_povreda)
   (implies zk_151_teska_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule13] ) ) ) ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( negative-support $?gen133 ) ( negative-overruled $?gen134 & : ( not ( subseq-pos ( create$ rule13-overruled $?gen133 $$$ $?gen134 ) ) ) ) ( positive-defeated $?gen132 & : ( not ( member$ rule13 $?gen132 ) ) ) ) ( test ( eq ( class ?gen130 ) zk_151_teska_tjelesna_povreda ) ) => ( calc ( bind $?gen135 ( create$ rule13-overruled $?gen133 $?gen134 ) ) ) ?gen130 <- ( zk_151_teska_tjelesna_povreda ( negative-overruled $?gen135 ) )"))

([rule13-support] of derived-attribute-rule
   (pos-name rule13-support-gen926)
   (depends-on declare lc:case zk_151_teska_tjelesna_povreda)
   (implies zk_151_teska_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule13] ) ) ) ?gen129 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen130 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ( positive-support $?gen132 & : ( not ( subseq-pos ( create$ rule13 ?gen129 $$$ $?gen132 ) ) ) ) ) ( test ( eq ( class ?gen130 ) zk_151_teska_tjelesna_povreda ) ) => ( calc ( bind $?gen135 ( create$ rule13 ?gen129 $?gen132 ) ) ) ?gen130 <- ( zk_151_teska_tjelesna_povreda ( positive-support $?gen135 ) )"))

([rule12-defeasibly-dot] of derived-attribute-rule
   (pos-name rule12-defeasibly-dot-gen928)
   (depends-on declare zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi lc:case lc:case zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi)
   (implies zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule12] ) ) ) ?gen119 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule12 $? ) ) ( test ( eq ( class ?gen119 ) zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ) ) ( not ( and ?gen126 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen125 & : ( >= ?gen125 1 ) ) ) ?gen128 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:gonjenje_se_preduzima_po_privatnoj_tuzbi \"yes\" ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen119 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( negative ~ 2 ) ( positive-overruled $?gen121 & : ( not ( member$ rule12 $?gen121 ) ) ) ) ) ) => ?gen119 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( positive 0 ) )"))

([rule12-defeasibly] of derived-attribute-rule
   (pos-name rule12-defeasibly-gen930)
   (depends-on declare lc:case lc:case zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi)
   (implies zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule12] ) ) ) ?gen126 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen125 & : ( >= ?gen125 1 ) ) ) ?gen128 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:gonjenje_se_preduzima_po_privatnoj_tuzbi \"yes\" ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen119 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen121 & : ( not ( member$ rule12 $?gen121 ) ) ) ) ( test ( eq ( class ?gen119 ) zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ) ) => ?gen119 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( positive 1 ) ( positive-derivator rule12 ?gen126 ?gen128 ) )"))

([rule12-overruled-dot] of derived-attribute-rule
   (pos-name rule12-overruled-dot-gen932)
   (depends-on declare zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi lc:case lc:case zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi)
   (implies zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule12] ) ) ) ?gen119 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ( negative-support $?gen122 ) ( negative-overruled $?gen123 & : ( subseq-pos ( create$ rule12-overruled $?gen122 $$$ $?gen123 ) ) ) ) ( test ( eq ( class ?gen119 ) zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ) ) ( not ( and ?gen126 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen125 & : ( >= ?gen125 1 ) ) ) ?gen128 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:gonjenje_se_preduzima_po_privatnoj_tuzbi \"yes\" ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen119 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( positive-defeated $?gen121 & : ( not ( member$ rule12 $?gen121 ) ) ) ) ) ) => ( calc ( bind $?gen124 ( delete-member$ $?gen123 ( create$ rule12-overruled $?gen122 ) ) ) ) ?gen119 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( negative-overruled $?gen124 ) )"))

([rule12-overruled] of derived-attribute-rule
   (pos-name rule12-overruled-gen934)
   (depends-on declare lc:case lc:case zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi)
   (implies zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule12] ) ) ) ?gen126 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen125 & : ( >= ?gen125 1 ) ) ) ?gen128 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:gonjenje_se_preduzima_po_privatnoj_tuzbi \"yes\" ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen119 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ( negative-support $?gen122 ) ( negative-overruled $?gen123 & : ( not ( subseq-pos ( create$ rule12-overruled $?gen122 $$$ $?gen123 ) ) ) ) ( positive-defeated $?gen121 & : ( not ( member$ rule12 $?gen121 ) ) ) ) ( test ( eq ( class ?gen119 ) zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ) ) => ( calc ( bind $?gen124 ( create$ rule12-overruled $?gen122 $?gen123 ) ) ) ?gen119 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( negative-overruled $?gen124 ) )"))

([rule12-support] of derived-attribute-rule
   (pos-name rule12-support-gen936)
   (depends-on declare lc:case lc:case zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi)
   (implies zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule12] ) ) ) ?gen117 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen118 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:gonjenje_se_preduzima_po_privatnoj_tuzbi \"yes\" ) ) ?gen119 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ( positive-support $?gen121 & : ( not ( subseq-pos ( create$ rule12 ?gen117 ?gen118 $$$ $?gen121 ) ) ) ) ) ( test ( eq ( class ?gen119 ) zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ) ) => ( calc ( bind $?gen124 ( create$ rule12 ?gen117 ?gen118 $?gen121 ) ) ) ?gen119 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( positive-support $?gen124 ) )"))

([rule11-defeasibly-dot] of derived-attribute-rule
   (pos-name rule11-defeasibly-dot-gen938)
   (depends-on declare zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem lc:case lc:case zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule11] ) ) ) ?gen107 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule11 $? ) ) ( test ( eq ( class ?gen107 ) zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) ( not ( and ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen113 & : ( >= ?gen113 1 ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog \"yes\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen107 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( negative ~ 2 ) ( positive-overruled $?gen109 & : ( not ( member$ rule11 $?gen109 ) ) ) ) ) ) => ?gen107 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( positive 0 ) )"))

([rule11-defeasibly] of derived-attribute-rule
   (pos-name rule11-defeasibly-gen940)
   (depends-on declare lc:case lc:case zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule11] ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen113 & : ( >= ?gen113 1 ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog \"yes\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen107 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen109 & : ( not ( member$ rule11 $?gen109 ) ) ) ) ( test ( eq ( class ?gen107 ) zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) => ?gen107 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( positive 1 ) ( positive-derivator rule11 ?gen114 ?gen116 ) )"))

([rule11-overruled-dot] of derived-attribute-rule
   (pos-name rule11-overruled-dot-gen942)
   (depends-on declare zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem lc:case lc:case zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule11] ) ) ) ?gen107 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( negative-support $?gen110 ) ( negative-overruled $?gen111 & : ( subseq-pos ( create$ rule11-overruled $?gen110 $$$ $?gen111 ) ) ) ) ( test ( eq ( class ?gen107 ) zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) ( not ( and ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen113 & : ( >= ?gen113 1 ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog \"yes\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen107 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( positive-defeated $?gen109 & : ( not ( member$ rule11 $?gen109 ) ) ) ) ) ) => ( calc ( bind $?gen112 ( delete-member$ $?gen111 ( create$ rule11-overruled $?gen110 ) ) ) ) ?gen107 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( negative-overruled $?gen112 ) )"))

([rule11-overruled] of derived-attribute-rule
   (pos-name rule11-overruled-gen944)
   (depends-on declare lc:case lc:case zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule11] ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen113 & : ( >= ?gen113 1 ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog \"yes\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen107 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( negative-support $?gen110 ) ( negative-overruled $?gen111 & : ( not ( subseq-pos ( create$ rule11-overruled $?gen110 $$$ $?gen111 ) ) ) ) ( positive-defeated $?gen109 & : ( not ( member$ rule11 $?gen109 ) ) ) ) ( test ( eq ( class ?gen107 ) zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) => ( calc ( bind $?gen112 ( create$ rule11-overruled $?gen110 $?gen111 ) ) ) ?gen107 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( negative-overruled $?gen112 ) )"))

([rule11-support] of derived-attribute-rule
   (pos-name rule11-support-gen946)
   (depends-on declare lc:case lc:case zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule11] ) ) ) ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen106 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog \"yes\" ) ) ?gen107 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive-support $?gen109 & : ( not ( subseq-pos ( create$ rule11 ?gen105 ?gen106 $$$ $?gen109 ) ) ) ) ) ( test ( eq ( class ?gen107 ) zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) => ( calc ( bind $?gen112 ( create$ rule11 ?gen105 ?gen106 $?gen109 ) ) ) ?gen107 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( positive-support $?gen112 ) )"))

([rule10-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10-defeasibly-dot-gen948)
   (depends-on declare zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem lc:case zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10] ) ) ) ?gen97 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule10 $? ) ) ( test ( eq ( class ?gen97 ) zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) ( not ( and ?gen104 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( positive ~ 2 ) ( negative-overruled $?gen99 & : ( not ( member$ rule10 $?gen99 ) ) ) ) ) ) => ?gen97 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( negative 0 ) )"))

([rule10-defeasibly] of derived-attribute-rule
   (pos-name rule10-defeasibly-gen950)
   (depends-on declare lc:case zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10] ) ) ) ?gen104 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen99 & : ( not ( member$ rule10 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) => ?gen97 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( negative 1 ) ( negative-derivator rule10 ?gen104 ) )"))

([rule10-overruled-dot] of derived-attribute-rule
   (pos-name rule10-overruled-dot-gen952)
   (depends-on declare zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem lc:case zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10] ) ) ) ?gen97 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive-support $?gen100 ) ( positive-overruled $?gen101 & : ( subseq-pos ( create$ rule10-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( test ( eq ( class ?gen97 ) zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) ( not ( and ?gen104 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( negative-defeated $?gen99 & : ( not ( member$ rule10 $?gen99 ) ) ) ) ) ) => ( calc ( bind $?gen102 ( delete-member$ $?gen101 ( create$ rule10-overruled $?gen100 ) ) ) ) ?gen97 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( positive-overruled $?gen102 ) )"))

([rule10-overruled] of derived-attribute-rule
   (pos-name rule10-overruled-gen954)
   (depends-on declare lc:case zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10] ) ) ) ?gen104 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive-support $?gen100 ) ( positive-overruled $?gen101 & : ( not ( subseq-pos ( create$ rule10-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( negative-defeated $?gen99 & : ( not ( member$ rule10 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) => ( calc ( bind $?gen102 ( create$ rule10-overruled $?gen100 $?gen101 ) ) ) ?gen97 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( positive-overruled $?gen102 ) )"))

([rule10-support] of derived-attribute-rule
   (pos-name rule10-support-gen956)
   (depends-on declare lc:case zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10] ) ) ) ?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ) ?gen97 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( negative-support $?gen99 & : ( not ( subseq-pos ( create$ rule10 ?gen96 $$$ $?gen99 ) ) ) ) ) ( test ( eq ( class ?gen97 ) zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) => ( calc ( bind $?gen102 ( create$ rule10 ?gen96 $?gen99 ) ) ) ?gen97 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( negative-support $?gen102 ) )"))

([rule9-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9-defeasibly-dot-gen958)
   (depends-on declare zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem lc:case zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9] ) ) ) ?gen88 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule9 $? ) ) ( test ( eq ( class ?gen88 ) zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) ( not ( and ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( negative ~ 2 ) ( positive-overruled $?gen90 & : ( not ( member$ rule9 $?gen90 ) ) ) ) ) ) => ?gen88 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( positive 0 ) )"))

([rule9-defeasibly] of derived-attribute-rule
   (pos-name rule9-defeasibly-gen960)
   (depends-on declare lc:case zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9] ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen90 & : ( not ( member$ rule9 $?gen90 ) ) ) ) ( test ( eq ( class ?gen88 ) zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) => ?gen88 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( positive 1 ) ( positive-derivator rule9 ?gen95 ) )"))

([rule9-overruled-dot] of derived-attribute-rule
   (pos-name rule9-overruled-dot-gen962)
   (depends-on declare zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem lc:case zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9] ) ) ) ?gen88 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( negative-support $?gen91 ) ( negative-overruled $?gen92 & : ( subseq-pos ( create$ rule9-overruled $?gen91 $$$ $?gen92 ) ) ) ) ( test ( eq ( class ?gen88 ) zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) ( not ( and ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( positive-defeated $?gen90 & : ( not ( member$ rule9 $?gen90 ) ) ) ) ) ) => ( calc ( bind $?gen93 ( delete-member$ $?gen92 ( create$ rule9-overruled $?gen91 ) ) ) ) ?gen88 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( negative-overruled $?gen93 ) )"))

([rule9-overruled] of derived-attribute-rule
   (pos-name rule9-overruled-gen964)
   (depends-on declare lc:case zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9] ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( negative-support $?gen91 ) ( negative-overruled $?gen92 & : ( not ( subseq-pos ( create$ rule9-overruled $?gen91 $$$ $?gen92 ) ) ) ) ( positive-defeated $?gen90 & : ( not ( member$ rule9 $?gen90 ) ) ) ) ( test ( eq ( class ?gen88 ) zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) => ( calc ( bind $?gen93 ( create$ rule9-overruled $?gen91 $?gen92 ) ) ) ?gen88 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( negative-overruled $?gen93 ) )"))

([rule9-support] of derived-attribute-rule
   (pos-name rule9-support-gen966)
   (depends-on declare lc:case zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9] ) ) ) ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen88 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ( positive-support $?gen90 & : ( not ( subseq-pos ( create$ rule9 ?gen87 $$$ $?gen90 ) ) ) ) ) ( test ( eq ( class ?gen88 ) zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) => ( calc ( bind $?gen93 ( create$ rule9 ?gen87 $?gen90 ) ) ) ?gen88 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( positive-support $?gen93 ) )"))

([rule8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8-defeasibly-dot-gen968)
   (depends-on declare zk_152_laka_tjelesna_povreda lc:case zk_152_laka_tjelesna_povreda)
   (implies zk_152_laka_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8] ) ) ) ?gen79 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule8 $? ) ) ( test ( eq ( class ?gen79 ) zk_152_laka_tjelesna_povreda ) ) ( not ( and ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( zk_152_laka_tjelesna_povreda ( positive ~ 2 ) ( negative-overruled $?gen81 & : ( not ( member$ rule8 $?gen81 ) ) ) ) ) ) => ?gen79 <- ( zk_152_laka_tjelesna_povreda ( negative 0 ) )"))

([rule8-defeasibly] of derived-attribute-rule
   (pos-name rule8-defeasibly-gen970)
   (depends-on declare lc:case zk_152_laka_tjelesna_povreda)
   (implies zk_152_laka_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8] ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen81 & : ( not ( member$ rule8 $?gen81 ) ) ) ) ( test ( eq ( class ?gen79 ) zk_152_laka_tjelesna_povreda ) ) => ?gen79 <- ( zk_152_laka_tjelesna_povreda ( negative 1 ) ( negative-derivator rule8 ?gen86 ) )"))

([rule8-overruled-dot] of derived-attribute-rule
   (pos-name rule8-overruled-dot-gen972)
   (depends-on declare zk_152_laka_tjelesna_povreda lc:case zk_152_laka_tjelesna_povreda)
   (implies zk_152_laka_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8] ) ) ) ?gen79 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive-support $?gen82 ) ( positive-overruled $?gen83 & : ( subseq-pos ( create$ rule8-overruled $?gen82 $$$ $?gen83 ) ) ) ) ( test ( eq ( class ?gen79 ) zk_152_laka_tjelesna_povreda ) ) ( not ( and ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( zk_152_laka_tjelesna_povreda ( negative-defeated $?gen81 & : ( not ( member$ rule8 $?gen81 ) ) ) ) ) ) => ( calc ( bind $?gen84 ( delete-member$ $?gen83 ( create$ rule8-overruled $?gen82 ) ) ) ) ?gen79 <- ( zk_152_laka_tjelesna_povreda ( positive-overruled $?gen84 ) )"))

([rule8-overruled] of derived-attribute-rule
   (pos-name rule8-overruled-gen974)
   (depends-on declare lc:case zk_152_laka_tjelesna_povreda)
   (implies zk_152_laka_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8] ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive-support $?gen82 ) ( positive-overruled $?gen83 & : ( not ( subseq-pos ( create$ rule8-overruled $?gen82 $$$ $?gen83 ) ) ) ) ( negative-defeated $?gen81 & : ( not ( member$ rule8 $?gen81 ) ) ) ) ( test ( eq ( class ?gen79 ) zk_152_laka_tjelesna_povreda ) ) => ( calc ( bind $?gen84 ( create$ rule8-overruled $?gen82 $?gen83 ) ) ) ?gen79 <- ( zk_152_laka_tjelesna_povreda ( positive-overruled $?gen84 ) )"))

([rule8-support] of derived-attribute-rule
   (pos-name rule8-support-gen976)
   (depends-on declare lc:case zk_152_laka_tjelesna_povreda)
   (implies zk_152_laka_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8] ) ) ) ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ) ?gen79 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( negative-support $?gen81 & : ( not ( subseq-pos ( create$ rule8 ?gen78 $$$ $?gen81 ) ) ) ) ) ( test ( eq ( class ?gen79 ) zk_152_laka_tjelesna_povreda ) ) => ( calc ( bind $?gen84 ( create$ rule8 ?gen78 $?gen81 ) ) ) ?gen79 <- ( zk_152_laka_tjelesna_povreda ( negative-support $?gen84 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen978)
   (depends-on declare zk_152_laka_tjelesna_povreda lc:case zk_152_laka_tjelesna_povreda)
   (implies zk_152_laka_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen70 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule7 $? ) ) ( test ( eq ( class ?gen70 ) zk_152_laka_tjelesna_povreda ) ) ( not ( and ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( zk_152_laka_tjelesna_povreda ( negative ~ 2 ) ( positive-overruled $?gen72 & : ( not ( member$ rule7 $?gen72 ) ) ) ) ) ) => ?gen70 <- ( zk_152_laka_tjelesna_povreda ( positive 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen980)
   (depends-on declare lc:case zk_152_laka_tjelesna_povreda)
   (implies zk_152_laka_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen72 & : ( not ( member$ rule7 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) zk_152_laka_tjelesna_povreda ) ) => ?gen70 <- ( zk_152_laka_tjelesna_povreda ( positive 1 ) ( positive-derivator rule7 ?gen77 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen982)
   (depends-on declare zk_152_laka_tjelesna_povreda lc:case zk_152_laka_tjelesna_povreda)
   (implies zk_152_laka_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen70 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( negative-support $?gen73 ) ( negative-overruled $?gen74 & : ( subseq-pos ( create$ rule7-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( test ( eq ( class ?gen70 ) zk_152_laka_tjelesna_povreda ) ) ( not ( and ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( zk_152_laka_tjelesna_povreda ( positive-defeated $?gen72 & : ( not ( member$ rule7 $?gen72 ) ) ) ) ) ) => ( calc ( bind $?gen75 ( delete-member$ $?gen74 ( create$ rule7-overruled $?gen73 ) ) ) ) ?gen70 <- ( zk_152_laka_tjelesna_povreda ( negative-overruled $?gen75 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen984)
   (depends-on declare lc:case zk_152_laka_tjelesna_povreda)
   (implies zk_152_laka_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( negative-support $?gen73 ) ( negative-overruled $?gen74 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( positive-defeated $?gen72 & : ( not ( member$ rule7 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) zk_152_laka_tjelesna_povreda ) ) => ( calc ( bind $?gen75 ( create$ rule7-overruled $?gen73 $?gen74 ) ) ) ?gen70 <- ( zk_152_laka_tjelesna_povreda ( negative-overruled $?gen75 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen986)
   (depends-on declare lc:case zk_152_laka_tjelesna_povreda)
   (implies zk_152_laka_tjelesna_povreda)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen70 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ( positive-support $?gen72 & : ( not ( subseq-pos ( create$ rule7 ?gen69 $$$ $?gen72 ) ) ) ) ) ( test ( eq ( class ?gen70 ) zk_152_laka_tjelesna_povreda ) ) => ( calc ( bind $?gen75 ( create$ rule7 ?gen69 $?gen72 ) ) ) ?gen70 <- ( zk_152_laka_tjelesna_povreda ( positive-support $?gen75 ) )"))

([rule6-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6-defeasibly-dot-gen988)
   (depends-on declare zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji lc:case zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (implies zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6] ) ) ) ?gen61 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6 $? ) ) ( test ( eq ( class ?gen61 ) zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ) ( not ( and ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"no\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( positive ~ 2 ) ( negative-overruled $?gen63 & : ( not ( member$ rule6 $?gen63 ) ) ) ) ) ) => ?gen61 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( negative 0 ) )"))

([rule6-defeasibly] of derived-attribute-rule
   (pos-name rule6-defeasibly-gen990)
   (depends-on declare lc:case zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (implies zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6] ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"no\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen63 & : ( not ( member$ rule6 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ) => ?gen61 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( negative 1 ) ( negative-derivator rule6 ?gen68 ) )"))

([rule6-overruled-dot] of derived-attribute-rule
   (pos-name rule6-overruled-dot-gen992)
   (depends-on declare zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji lc:case zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (implies zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6] ) ) ) ?gen61 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive-support $?gen64 ) ( positive-overruled $?gen65 & : ( subseq-pos ( create$ rule6-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( test ( eq ( class ?gen61 ) zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ) ( not ( and ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"no\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( negative-defeated $?gen63 & : ( not ( member$ rule6 $?gen63 ) ) ) ) ) ) => ( calc ( bind $?gen66 ( delete-member$ $?gen65 ( create$ rule6-overruled $?gen64 ) ) ) ) ?gen61 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( positive-overruled $?gen66 ) )"))

([rule6-overruled] of derived-attribute-rule
   (pos-name rule6-overruled-gen994)
   (depends-on declare lc:case zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (implies zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6] ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"no\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive-support $?gen64 ) ( positive-overruled $?gen65 & : ( not ( subseq-pos ( create$ rule6-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( negative-defeated $?gen63 & : ( not ( member$ rule6 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ) => ( calc ( bind $?gen66 ( create$ rule6-overruled $?gen64 $?gen65 ) ) ) ?gen61 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( positive-overruled $?gen66 ) )"))

([rule6-support] of derived-attribute-rule
   (pos-name rule6-support-gen996)
   (depends-on declare lc:case zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (implies zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6] ) ) ) ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"no\" ) ) ?gen61 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( negative-support $?gen63 & : ( not ( subseq-pos ( create$ rule6 ?gen60 $$$ $?gen63 ) ) ) ) ) ( test ( eq ( class ?gen61 ) zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ) => ( calc ( bind $?gen66 ( create$ rule6 ?gen60 $?gen63 ) ) ) ?gen61 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( negative-support $?gen66 ) )"))

([rule5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5-defeasibly-dot-gen998)
   (depends-on declare zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji lc:case zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (implies zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5] ) ) ) ?gen52 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule5 $? ) ) ( test ( eq ( class ?gen52 ) zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ) ( not ( and ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"yes\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( negative ~ 2 ) ( positive-overruled $?gen54 & : ( not ( member$ rule5 $?gen54 ) ) ) ) ) ) => ?gen52 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( positive 0 ) )"))

([rule5-defeasibly] of derived-attribute-rule
   (pos-name rule5-defeasibly-gen1000)
   (depends-on declare lc:case zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (implies zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5] ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"yes\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen54 & : ( not ( member$ rule5 $?gen54 ) ) ) ) ( test ( eq ( class ?gen52 ) zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ) => ?gen52 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( positive 1 ) ( positive-derivator rule5 ?gen59 ) )"))

([rule5-overruled-dot] of derived-attribute-rule
   (pos-name rule5-overruled-dot-gen1002)
   (depends-on declare zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji lc:case zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (implies zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5] ) ) ) ?gen52 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( negative-support $?gen55 ) ( negative-overruled $?gen56 & : ( subseq-pos ( create$ rule5-overruled $?gen55 $$$ $?gen56 ) ) ) ) ( test ( eq ( class ?gen52 ) zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ) ( not ( and ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"yes\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( positive-defeated $?gen54 & : ( not ( member$ rule5 $?gen54 ) ) ) ) ) ) => ( calc ( bind $?gen57 ( delete-member$ $?gen56 ( create$ rule5-overruled $?gen55 ) ) ) ) ?gen52 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( negative-overruled $?gen57 ) )"))

([rule5-overruled] of derived-attribute-rule
   (pos-name rule5-overruled-gen1004)
   (depends-on declare lc:case zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (implies zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5] ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"yes\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( negative-support $?gen55 ) ( negative-overruled $?gen56 & : ( not ( subseq-pos ( create$ rule5-overruled $?gen55 $$$ $?gen56 ) ) ) ) ( positive-defeated $?gen54 & : ( not ( member$ rule5 $?gen54 ) ) ) ) ( test ( eq ( class ?gen52 ) zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ) => ( calc ( bind $?gen57 ( create$ rule5-overruled $?gen55 $?gen56 ) ) ) ?gen52 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( negative-overruled $?gen57 ) )"))

([rule5-support] of derived-attribute-rule
   (pos-name rule5-support-gen1006)
   (depends-on declare lc:case zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (implies zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"yes\" ) ) ?gen52 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ( positive-support $?gen54 & : ( not ( subseq-pos ( create$ rule5 ?gen51 $$$ $?gen54 ) ) ) ) ) ( test ( eq ( class ?gen52 ) zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ) => ( calc ( bind $?gen57 ( create$ rule5 ?gen51 $?gen54 ) ) ) ?gen52 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( positive-support $?gen57 ) )"))

([rule4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4-defeasibly-dot-gen1008)
   (depends-on declare zk_153_ucestvovanje_u_tuci lc:case zk_153_ucestvovanje_u_tuci)
   (implies zk_153_ucestvovanje_u_tuci)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4] ) ) ) ?gen43 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule4 $? ) ) ( test ( eq ( class ?gen43 ) zk_153_ucestvovanje_u_tuci ) ) ( not ( and ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"no\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( zk_153_ucestvovanje_u_tuci ( positive ~ 2 ) ( negative-overruled $?gen45 & : ( not ( member$ rule4 $?gen45 ) ) ) ) ) ) => ?gen43 <- ( zk_153_ucestvovanje_u_tuci ( negative 0 ) )"))

([rule4-defeasibly] of derived-attribute-rule
   (pos-name rule4-defeasibly-gen1010)
   (depends-on declare lc:case zk_153_ucestvovanje_u_tuci)
   (implies zk_153_ucestvovanje_u_tuci)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4] ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"no\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen45 & : ( not ( member$ rule4 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) zk_153_ucestvovanje_u_tuci ) ) => ?gen43 <- ( zk_153_ucestvovanje_u_tuci ( negative 1 ) ( negative-derivator rule4 ?gen50 ) )"))

([rule4-overruled-dot] of derived-attribute-rule
   (pos-name rule4-overruled-dot-gen1012)
   (depends-on declare zk_153_ucestvovanje_u_tuci lc:case zk_153_ucestvovanje_u_tuci)
   (implies zk_153_ucestvovanje_u_tuci)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4] ) ) ) ?gen43 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive-support $?gen46 ) ( positive-overruled $?gen47 & : ( subseq-pos ( create$ rule4-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( test ( eq ( class ?gen43 ) zk_153_ucestvovanje_u_tuci ) ) ( not ( and ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"no\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( zk_153_ucestvovanje_u_tuci ( negative-defeated $?gen45 & : ( not ( member$ rule4 $?gen45 ) ) ) ) ) ) => ( calc ( bind $?gen48 ( delete-member$ $?gen47 ( create$ rule4-overruled $?gen46 ) ) ) ) ?gen43 <- ( zk_153_ucestvovanje_u_tuci ( positive-overruled $?gen48 ) )"))

([rule4-overruled] of derived-attribute-rule
   (pos-name rule4-overruled-gen1014)
   (depends-on declare lc:case zk_153_ucestvovanje_u_tuci)
   (implies zk_153_ucestvovanje_u_tuci)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4] ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"no\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive-support $?gen46 ) ( positive-overruled $?gen47 & : ( not ( subseq-pos ( create$ rule4-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( negative-defeated $?gen45 & : ( not ( member$ rule4 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) zk_153_ucestvovanje_u_tuci ) ) => ( calc ( bind $?gen48 ( create$ rule4-overruled $?gen46 $?gen47 ) ) ) ?gen43 <- ( zk_153_ucestvovanje_u_tuci ( positive-overruled $?gen48 ) )"))

([rule4-support] of derived-attribute-rule
   (pos-name rule4-support-gen1016)
   (depends-on declare lc:case zk_153_ucestvovanje_u_tuci)
   (implies zk_153_ucestvovanje_u_tuci)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4] ) ) ) ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"no\" ) ) ?gen43 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( negative-support $?gen45 & : ( not ( subseq-pos ( create$ rule4 ?gen42 $$$ $?gen45 ) ) ) ) ) ( test ( eq ( class ?gen43 ) zk_153_ucestvovanje_u_tuci ) ) => ( calc ( bind $?gen48 ( create$ rule4 ?gen42 $?gen45 ) ) ) ?gen43 <- ( zk_153_ucestvovanje_u_tuci ( negative-support $?gen48 ) )"))

([rule3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3-defeasibly-dot-gen1018)
   (depends-on declare zk_153_ucestvovanje_u_tuci lc:case zk_153_ucestvovanje_u_tuci)
   (implies zk_153_ucestvovanje_u_tuci)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3] ) ) ) ?gen34 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule3 $? ) ) ( test ( eq ( class ?gen34 ) zk_153_ucestvovanje_u_tuci ) ) ( not ( and ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen34 <- ( zk_153_ucestvovanje_u_tuci ( negative ~ 2 ) ( positive-overruled $?gen36 & : ( not ( member$ rule3 $?gen36 ) ) ) ) ) ) => ?gen34 <- ( zk_153_ucestvovanje_u_tuci ( positive 0 ) )"))

([rule3-defeasibly] of derived-attribute-rule
   (pos-name rule3-defeasibly-gen1020)
   (depends-on declare lc:case zk_153_ucestvovanje_u_tuci)
   (implies zk_153_ucestvovanje_u_tuci)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3] ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen34 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen36 & : ( not ( member$ rule3 $?gen36 ) ) ) ) ( test ( eq ( class ?gen34 ) zk_153_ucestvovanje_u_tuci ) ) => ?gen34 <- ( zk_153_ucestvovanje_u_tuci ( positive 1 ) ( positive-derivator rule3 ?gen41 ) )"))

([rule3-overruled-dot] of derived-attribute-rule
   (pos-name rule3-overruled-dot-gen1022)
   (depends-on declare zk_153_ucestvovanje_u_tuci lc:case zk_153_ucestvovanje_u_tuci)
   (implies zk_153_ucestvovanje_u_tuci)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3] ) ) ) ?gen34 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( negative-support $?gen37 ) ( negative-overruled $?gen38 & : ( subseq-pos ( create$ rule3-overruled $?gen37 $$$ $?gen38 ) ) ) ) ( test ( eq ( class ?gen34 ) zk_153_ucestvovanje_u_tuci ) ) ( not ( and ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen34 <- ( zk_153_ucestvovanje_u_tuci ( positive-defeated $?gen36 & : ( not ( member$ rule3 $?gen36 ) ) ) ) ) ) => ( calc ( bind $?gen39 ( delete-member$ $?gen38 ( create$ rule3-overruled $?gen37 ) ) ) ) ?gen34 <- ( zk_153_ucestvovanje_u_tuci ( negative-overruled $?gen39 ) )"))

([rule3-overruled] of derived-attribute-rule
   (pos-name rule3-overruled-gen1024)
   (depends-on declare lc:case zk_153_ucestvovanje_u_tuci)
   (implies zk_153_ucestvovanje_u_tuci)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3] ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen34 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( negative-support $?gen37 ) ( negative-overruled $?gen38 & : ( not ( subseq-pos ( create$ rule3-overruled $?gen37 $$$ $?gen38 ) ) ) ) ( positive-defeated $?gen36 & : ( not ( member$ rule3 $?gen36 ) ) ) ) ( test ( eq ( class ?gen34 ) zk_153_ucestvovanje_u_tuci ) ) => ( calc ( bind $?gen39 ( create$ rule3-overruled $?gen37 $?gen38 ) ) ) ?gen34 <- ( zk_153_ucestvovanje_u_tuci ( negative-overruled $?gen39 ) )"))

([rule3-support] of derived-attribute-rule
   (pos-name rule3-support-gen1026)
   (depends-on declare lc:case zk_153_ucestvovanje_u_tuci)
   (implies zk_153_ucestvovanje_u_tuci)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3] ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"yes\" ) ) ?gen34 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ( positive-support $?gen36 & : ( not ( subseq-pos ( create$ rule3 ?gen33 $$$ $?gen36 ) ) ) ) ) ( test ( eq ( class ?gen34 ) zk_153_ucestvovanje_u_tuci ) ) => ( calc ( bind $?gen39 ( create$ rule3 ?gen33 $?gen36 ) ) ) ?gen34 <- ( zk_153_ucestvovanje_u_tuci ( positive-support $?gen39 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen1028)
   (depends-on declare zk_145_ubistvo_na_mah lc:case zk_145_ubistvo_na_mah)
   (implies zk_145_ubistvo_na_mah)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen25 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule2 $? ) ) ( test ( eq ( class ?gen25 ) zk_145_ubistvo_na_mah ) ) ( not ( and ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"no\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( zk_145_ubistvo_na_mah ( positive ~ 2 ) ( negative-overruled $?gen27 & : ( not ( member$ rule2 $?gen27 ) ) ) ) ) ) => ?gen25 <- ( zk_145_ubistvo_na_mah ( negative 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen1030)
   (depends-on declare lc:case zk_145_ubistvo_na_mah)
   (implies zk_145_ubistvo_na_mah)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"no\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen27 & : ( not ( member$ rule2 $?gen27 ) ) ) ) ( test ( eq ( class ?gen25 ) zk_145_ubistvo_na_mah ) ) => ?gen25 <- ( zk_145_ubistvo_na_mah ( negative 1 ) ( negative-derivator rule2 ?gen32 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen1032)
   (depends-on declare zk_145_ubistvo_na_mah lc:case zk_145_ubistvo_na_mah)
   (implies zk_145_ubistvo_na_mah)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen25 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive-support $?gen28 ) ( positive-overruled $?gen29 & : ( subseq-pos ( create$ rule2-overruled $?gen28 $$$ $?gen29 ) ) ) ) ( test ( eq ( class ?gen25 ) zk_145_ubistvo_na_mah ) ) ( not ( and ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"no\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( zk_145_ubistvo_na_mah ( negative-defeated $?gen27 & : ( not ( member$ rule2 $?gen27 ) ) ) ) ) ) => ( calc ( bind $?gen30 ( delete-member$ $?gen29 ( create$ rule2-overruled $?gen28 ) ) ) ) ?gen25 <- ( zk_145_ubistvo_na_mah ( positive-overruled $?gen30 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen1034)
   (depends-on declare lc:case zk_145_ubistvo_na_mah)
   (implies zk_145_ubistvo_na_mah)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"no\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive-support $?gen28 ) ( positive-overruled $?gen29 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen28 $$$ $?gen29 ) ) ) ) ( negative-defeated $?gen27 & : ( not ( member$ rule2 $?gen27 ) ) ) ) ( test ( eq ( class ?gen25 ) zk_145_ubistvo_na_mah ) ) => ( calc ( bind $?gen30 ( create$ rule2-overruled $?gen28 $?gen29 ) ) ) ?gen25 <- ( zk_145_ubistvo_na_mah ( positive-overruled $?gen30 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen1036)
   (depends-on declare lc:case zk_145_ubistvo_na_mah)
   (implies zk_145_ubistvo_na_mah)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"no\" ) ) ?gen25 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( negative-support $?gen27 & : ( not ( subseq-pos ( create$ rule2 ?gen24 $$$ $?gen27 ) ) ) ) ) ( test ( eq ( class ?gen25 ) zk_145_ubistvo_na_mah ) ) => ( calc ( bind $?gen30 ( create$ rule2 ?gen24 $?gen27 ) ) ) ?gen25 <- ( zk_145_ubistvo_na_mah ( negative-support $?gen30 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen1038)
   (depends-on declare zk_145_ubistvo_na_mah lc:case zk_145_ubistvo_na_mah)
   (implies zk_145_ubistvo_na_mah)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen16 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen16 ) zk_145_ubistvo_na_mah ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( zk_145_ubistvo_na_mah ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ) ) => ?gen16 <- ( zk_145_ubistvo_na_mah ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen1040)
   (depends-on declare lc:case zk_145_ubistvo_na_mah)
   (implies zk_145_ubistvo_na_mah)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) zk_145_ubistvo_na_mah ) ) => ?gen16 <- ( zk_145_ubistvo_na_mah ( positive 1 ) ( positive-derivator rule1 ?gen23 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen1042)
   (depends-on declare zk_145_ubistvo_na_mah lc:case zk_145_ubistvo_na_mah)
   (implies zk_145_ubistvo_na_mah)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen16 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( subseq-pos ( create$ rule1-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( test ( eq ( class ?gen16 ) zk_145_ubistvo_na_mah ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( zk_145_ubistvo_na_mah ( positive-defeated $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ) ) => ( calc ( bind $?gen21 ( delete-member$ $?gen20 ( create$ rule1-overruled $?gen19 ) ) ) ) ?gen16 <- ( zk_145_ubistvo_na_mah ( negative-overruled $?gen21 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen1044)
   (depends-on declare lc:case zk_145_ubistvo_na_mah)
   (implies zk_145_ubistvo_na_mah)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( positive-defeated $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) zk_145_ubistvo_na_mah ) ) => ( calc ( bind $?gen21 ( create$ rule1-overruled $?gen19 $?gen20 ) ) ) ?gen16 <- ( zk_145_ubistvo_na_mah ( negative-overruled $?gen21 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen1046)
   (depends-on declare lc:case zk_145_ubistvo_na_mah)
   (implies zk_145_ubistvo_na_mah)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"yes\" ) ) ?gen16 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ( positive-support $?gen18 & : ( not ( subseq-pos ( create$ rule1 ?gen15 $$$ $?gen18 ) ) ) ) ) ( test ( eq ( class ?gen16 ) zk_145_ubistvo_na_mah ) ) => ( calc ( bind $?gen21 ( create$ rule1 ?gen15 $?gen18 ) ) ) ?gen16 <- ( zk_145_ubistvo_na_mah ( positive-support $?gen21 ) )"))

([pen27-deductive] of ntm-deductive-rule
   (pos-name pen27-deductive-gen547)
   (depends-on zk_151b_prinudna_sterilizacija max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (deductive-rule "?gen489 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ) ( not ( max_years_in_imprisonment ( value 5 ) ) ) => ( max_years_in_imprisonment ( value 5 ) )")
   (production-rule "( defrule pen27-deductive-gen547 ( declare ( salience ( calc-salience max_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen489 ) ( is-a zk_151b_prinudna_sterilizacija ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_years_in_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 5 ) ) ) ( make-instance ?oid of max_years_in_imprisonment ( value 5 ) ) )")
   (derived-class max_years_in_imprisonment))

([pen26-deductive] of ntm-deductive-rule
   (pos-name pen26-deductive-gen546)
   (depends-on zk_151b_prinudna_sterilizacija min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (deductive-rule "?gen480 <- ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ) ( not ( min_months_in_imprisonment ( value 3 ) ) ) => ( min_months_in_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen26-deductive-gen546 ( declare ( salience ( calc-salience min_months_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen480 ) ( is-a zk_151b_prinudna_sterilizacija ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_months_in_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_months_in_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_months_in_imprisonment 3 ) ) ) ( make-instance ?oid of min_months_in_imprisonment ( value 3 ) ) )")
   (derived-class min_months_in_imprisonment))

([pen25-deductive] of ntm-deductive-rule
   (pos-name pen25-deductive-gen545)
   (depends-on zk_151a_sakacenje_zenskih_genitalija max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (deductive-rule "?gen471 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ) ( not ( max_years_in_imprisonment ( value 8 ) ) ) => ( max_years_in_imprisonment ( value 8 ) )")
   (production-rule "( defrule pen25-deductive-gen545 ( declare ( salience ( calc-salience max_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen471 ) ( is-a zk_151a_sakacenje_zenskih_genitalija ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_years_in_imprisonment ) ( value 8 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 8 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 8 ) ) ) ( make-instance ?oid of max_years_in_imprisonment ( value 8 ) ) )")
   (derived-class max_years_in_imprisonment))

([pen24-deductive] of ntm-deductive-rule
   (pos-name pen24-deductive-gen544)
   (depends-on zk_151a_sakacenje_zenskih_genitalija min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (deductive-rule "?gen462 <- ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ) ( not ( min_years_in_imprisonment ( value 1 ) ) ) => ( min_years_in_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen24-deductive-gen544 ( declare ( salience ( calc-salience min_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen462 ) ( is-a zk_151a_sakacenje_zenskih_genitalija ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_years_in_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_years_in_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_years_in_imprisonment 1 ) ) ) ( make-instance ?oid of min_years_in_imprisonment ( value 1 ) ) )")
   (derived-class min_years_in_imprisonment))

([pen23-deductive] of ntm-deductive-rule
   (pos-name pen23-deductive-gen543)
   (depends-on zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (deductive-rule "?gen453 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ( not ( max_years_in_imprisonment ( value 5 ) ) ) => ( max_years_in_imprisonment ( value 5 ) )")
   (production-rule "( defrule pen23-deductive-gen543 ( declare ( salience ( calc-salience max_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen453 ) ( is-a zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_years_in_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 5 ) ) ) ( make-instance ?oid of max_years_in_imprisonment ( value 5 ) ) )")
   (derived-class max_years_in_imprisonment))

([pen22-deductive] of ntm-deductive-rule
   (pos-name pen22-deductive-gen542)
   (depends-on zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (deductive-rule "?gen444 <- ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ( not ( min_months_in_imprisonment ( value 6 ) ) ) => ( min_months_in_imprisonment ( value 6 ) )")
   (production-rule "( defrule pen22-deductive-gen542 ( declare ( salience ( calc-salience min_months_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen444 ) ( is-a zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_months_in_imprisonment ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_months_in_imprisonment 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_months_in_imprisonment 6 ) ) ) ( make-instance ?oid of min_months_in_imprisonment ( value 6 ) ) )")
   (derived-class min_months_in_imprisonment))

([pen21-deductive] of ntm-deductive-rule
   (pos-name pen21-deductive-gen541)
   (depends-on zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (deductive-rule "?gen435 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ( not ( max_years_in_imprisonment ( value 4 ) ) ) => ( max_years_in_imprisonment ( value 4 ) )")
   (production-rule "( defrule pen21-deductive-gen541 ( declare ( salience ( calc-salience max_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen435 ) ( is-a zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_years_in_imprisonment ) ( value 4 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 4 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 4 ) ) ) ( make-instance ?oid of max_years_in_imprisonment ( value 4 ) ) )")
   (derived-class max_years_in_imprisonment))

([pen20-deductive] of ntm-deductive-rule
   (pos-name pen20-deductive-gen540)
   (depends-on zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (deductive-rule "?gen426 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ( not ( min_months_in_imprisonment ( value 3 ) ) ) => ( min_months_in_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen20-deductive-gen540 ( declare ( salience ( calc-salience min_months_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen426 ) ( is-a zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_months_in_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_months_in_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_months_in_imprisonment 3 ) ) ) ( make-instance ?oid of min_months_in_imprisonment ( value 3 ) ) )")
   (derived-class min_months_in_imprisonment))

([pen19-deductive] of ntm-deductive-rule
   (pos-name pen19-deductive-gen539)
   (depends-on zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (deductive-rule "?gen417 <- ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ( not ( max_years_in_imprisonment ( value 3 ) ) ) => ( max_years_in_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen19-deductive-gen539 ( declare ( salience ( calc-salience max_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen417 ) ( is-a zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_years_in_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 3 ) ) ) ( make-instance ?oid of max_years_in_imprisonment ( value 3 ) ) )")
   (derived-class max_years_in_imprisonment))

([pen18-deductive] of ntm-deductive-rule
   (pos-name pen18-deductive-gen538)
   (depends-on zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (deductive-rule "?gen408 <- ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ) ( not ( max_years_in_imprisonment ( value 3 ) ) ) => ( max_years_in_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen18-deductive-gen538 ( declare ( salience ( calc-salience max_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen408 ) ( is-a zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_years_in_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 3 ) ) ) ( make-instance ?oid of max_years_in_imprisonment ( value 3 ) ) )")
   (derived-class max_years_in_imprisonment))

([pen17-deductive] of ntm-deductive-rule
   (pos-name pen17-deductive-gen537)
   (depends-on zk_151_teska_tjelesna_povreda_i_nastupila_smrt max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (deductive-rule "?gen399 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ) ( not ( max_years_in_imprisonment ( value 12 ) ) ) => ( max_years_in_imprisonment ( value 12 ) )")
   (production-rule "( defrule pen17-deductive-gen537 ( declare ( salience ( calc-salience max_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen399 ) ( is-a zk_151_teska_tjelesna_povreda_i_nastupila_smrt ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_years_in_imprisonment ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 12 ) ) ) ( make-instance ?oid of max_years_in_imprisonment ( value 12 ) ) )")
   (derived-class max_years_in_imprisonment))

([pen16-deductive] of ntm-deductive-rule
   (pos-name pen16-deductive-gen536)
   (depends-on zk_151_teska_tjelesna_povreda_i_nastupila_smrt min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (deductive-rule "?gen390 <- ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ) ( not ( min_years_in_imprisonment ( value 2 ) ) ) => ( min_years_in_imprisonment ( value 2 ) )")
   (production-rule "( defrule pen16-deductive-gen536 ( declare ( salience ( calc-salience min_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen390 ) ( is-a zk_151_teska_tjelesna_povreda_i_nastupila_smrt ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_years_in_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_years_in_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_years_in_imprisonment 2 ) ) ) ( make-instance ?oid of min_years_in_imprisonment ( value 2 ) ) )")
   (derived-class min_years_in_imprisonment))

([pen15-deductive] of ntm-deductive-rule
   (pos-name pen15-deductive-gen535)
   (depends-on zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (deductive-rule "?gen381 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ) ( not ( max_years_in_imprisonment ( value 8 ) ) ) => ( max_years_in_imprisonment ( value 8 ) )")
   (production-rule "( defrule pen15-deductive-gen535 ( declare ( salience ( calc-salience max_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen381 ) ( is-a zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_years_in_imprisonment ) ( value 8 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 8 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 8 ) ) ) ( make-instance ?oid of max_years_in_imprisonment ( value 8 ) ) )")
   (derived-class max_years_in_imprisonment))

([pen14-deductive] of ntm-deductive-rule
   (pos-name pen14-deductive-gen534)
   (depends-on zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (deductive-rule "?gen372 <- ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ) ( not ( min_years_in_imprisonment ( value 1 ) ) ) => ( min_years_in_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen14-deductive-gen534 ( declare ( salience ( calc-salience min_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen372 ) ( is-a zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_years_in_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_years_in_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_years_in_imprisonment 1 ) ) ) ( make-instance ?oid of min_years_in_imprisonment ( value 1 ) ) )")
   (derived-class min_years_in_imprisonment))

([pen13-deductive] of ntm-deductive-rule
   (pos-name pen13-deductive-gen533)
   (depends-on zk_151_teska_tjelesna_povreda max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (deductive-rule "?gen363 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ) ( not ( max_years_in_imprisonment ( value 5 ) ) ) => ( max_years_in_imprisonment ( value 5 ) )")
   (production-rule "( defrule pen13-deductive-gen533 ( declare ( salience ( calc-salience max_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen363 ) ( is-a zk_151_teska_tjelesna_povreda ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_years_in_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 5 ) ) ) ( make-instance ?oid of max_years_in_imprisonment ( value 5 ) ) )")
   (derived-class max_years_in_imprisonment))

([pen12-deductive] of ntm-deductive-rule
   (pos-name pen12-deductive-gen532)
   (depends-on zk_151_teska_tjelesna_povreda min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (deductive-rule "?gen354 <- ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ) ( not ( min_months_in_imprisonment ( value 6 ) ) ) => ( min_months_in_imprisonment ( value 6 ) )")
   (production-rule "( defrule pen12-deductive-gen532 ( declare ( salience ( calc-salience min_months_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen354 ) ( is-a zk_151_teska_tjelesna_povreda ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_months_in_imprisonment ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_months_in_imprisonment 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_months_in_imprisonment 6 ) ) ) ( make-instance ?oid of min_months_in_imprisonment ( value 6 ) ) )")
   (derived-class min_months_in_imprisonment))

([pen11-deductive] of ntm-deductive-rule
   (pos-name pen11-deductive-gen531)
   (depends-on zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi gonjenje_po_privatnoj_tuzbi)
   (implies gonjenje_po_privatnoj_tuzbi)
   (deductive-rule "?gen345 <- ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ) ( not ( gonjenje_po_privatnoj_tuzbi ( value true ) ) ) => ( gonjenje_po_privatnoj_tuzbi ( value true ) )")
   (production-rule "( defrule pen11-deductive-gen531 ( declare ( salience ( calc-salience gonjenje_po_privatnoj_tuzbi ) ) ) ( run-deductive-rules ) ( object ( name ?gen345 ) ( is-a zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ) ( defendant ?Defendant ) ) ( not ( object ( is-a gonjenje_po_privatnoj_tuzbi ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat gonjenje_po_privatnoj_tuzbi true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat gonjenje_po_privatnoj_tuzbi true ) ) ) ( make-instance ?oid of gonjenje_po_privatnoj_tuzbi ( value true ) ) )")
   (derived-class gonjenje_po_privatnoj_tuzbi))

([pen10-deductive] of ntm-deductive-rule
   (pos-name pen10-deductive-gen530)
   (depends-on zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem izrecena_opomena)
   (implies izrecena_opomena)
   (deductive-rule "?gen336 <- ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ) ( not ( izrecena_opomena ( value true ) ) ) => ( izrecena_opomena ( value true ) )")
   (production-rule "( defrule pen10-deductive-gen530 ( declare ( salience ( calc-salience izrecena_opomena ) ) ) ( run-deductive-rules ) ( object ( name ?gen336 ) ( is-a zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ( defendant ?Defendant ) ) ( not ( object ( is-a izrecena_opomena ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat izrecena_opomena true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat izrecena_opomena true ) ) ) ( make-instance ?oid of izrecena_opomena ( value true ) ) )")
   (derived-class izrecena_opomena))

([pen9-deductive] of ntm-deductive-rule
   (pos-name pen9-deductive-gen529)
   (depends-on zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (deductive-rule "?gen327 <- ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ) ( not ( max_years_in_imprisonment ( value 3 ) ) ) => ( max_years_in_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen9-deductive-gen529 ( declare ( salience ( calc-salience max_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen327 ) ( is-a zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_years_in_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 3 ) ) ) ( make-instance ?oid of max_years_in_imprisonment ( value 3 ) ) )")
   (derived-class max_years_in_imprisonment))

([pen8-deductive] of ntm-deductive-rule
   (pos-name pen8-deductive-gen528)
   (depends-on zk_152_laka_tjelesna_povreda years_in_imprisonment)
   (implies years_in_imprisonment)
   (deductive-rule "?gen318 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ) ( not ( years_in_imprisonment ( value 1 ) ) ) => ( years_in_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen8-deductive-gen528 ( declare ( salience ( calc-salience years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen318 ) ( is-a zk_152_laka_tjelesna_povreda ) ( defendant ?Defendant ) ) ( not ( object ( is-a years_in_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat years_in_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat years_in_imprisonment 1 ) ) ) ( make-instance ?oid of years_in_imprisonment ( value 1 ) ) )")
   (derived-class years_in_imprisonment))

([pen7-deductive] of ntm-deductive-rule
   (pos-name pen7-deductive-gen527)
   (depends-on zk_152_laka_tjelesna_povreda novcana_kazna)
   (implies novcana_kazna)
   (deductive-rule "?gen309 <- ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ) ( not ( novcana_kazna ( value 0 ) ) ) => ( novcana_kazna ( value 0 ) )")
   (production-rule "( defrule pen7-deductive-gen527 ( declare ( salience ( calc-salience novcana_kazna ) ) ) ( run-deductive-rules ) ( object ( name ?gen309 ) ( is-a zk_152_laka_tjelesna_povreda ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna 0 ) ) ) ( make-instance ?oid of novcana_kazna ( value 0 ) ) )")
   (derived-class novcana_kazna))

([pen6-deductive] of ntm-deductive-rule
   (pos-name pen6-deductive-gen526)
   (depends-on zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji months_in_imprisonment)
   (implies months_in_imprisonment)
   (deductive-rule "?gen300 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ) ( not ( months_in_imprisonment ( value 6 ) ) ) => ( months_in_imprisonment ( value 6 ) )")
   (production-rule "( defrule pen6-deductive-gen526 ( declare ( salience ( calc-salience months_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen300 ) ( is-a zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ( defendant ?Defendant ) ) ( not ( object ( is-a months_in_imprisonment ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat months_in_imprisonment 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat months_in_imprisonment 6 ) ) ) ( make-instance ?oid of months_in_imprisonment ( value 6 ) ) )")
   (derived-class months_in_imprisonment))

([pen5-deductive] of ntm-deductive-rule
   (pos-name pen5-deductive-gen525)
   (depends-on zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji novcana_kazna)
   (implies novcana_kazna)
   (deductive-rule "?gen291 <- ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ) ( not ( novcana_kazna ( value 0 ) ) ) => ( novcana_kazna ( value 0 ) )")
   (production-rule "( defrule pen5-deductive-gen525 ( declare ( salience ( calc-salience novcana_kazna ) ) ) ( run-deductive-rules ) ( object ( name ?gen291 ) ( is-a zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna 0 ) ) ) ( make-instance ?oid of novcana_kazna ( value 0 ) ) )")
   (derived-class novcana_kazna))

([pen4-deductive] of ntm-deductive-rule
   (pos-name pen4-deductive-gen524)
   (depends-on zk_153_ucestvovanje_u_tuci min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (deductive-rule "?gen282 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ) ( not ( min_years_in_imprisonment ( value 3 ) ) ) => ( min_years_in_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen4-deductive-gen524 ( declare ( salience ( calc-salience min_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen282 ) ( is-a zk_153_ucestvovanje_u_tuci ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_years_in_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_years_in_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_years_in_imprisonment 3 ) ) ) ( make-instance ?oid of min_years_in_imprisonment ( value 3 ) ) )")
   (derived-class min_years_in_imprisonment))

([pen3-deductive] of ntm-deductive-rule
   (pos-name pen3-deductive-gen523)
   (depends-on zk_153_ucestvovanje_u_tuci min_months_in_imprisonment)
   (implies min_months_in_imprisonment)
   (deductive-rule "?gen273 <- ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ) ( not ( min_months_in_imprisonment ( value 3 ) ) ) => ( min_months_in_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen3-deductive-gen523 ( declare ( salience ( calc-salience min_months_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen273 ) ( is-a zk_153_ucestvovanje_u_tuci ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_months_in_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_months_in_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_months_in_imprisonment 3 ) ) ) ( make-instance ?oid of min_months_in_imprisonment ( value 3 ) ) )")
   (derived-class min_months_in_imprisonment))

([pen2-deductive] of ntm-deductive-rule
   (pos-name pen2-deductive-gen522)
   (depends-on zk_145_ubistvo_na_mah max_years_in_imprisonment)
   (implies max_years_in_imprisonment)
   (deductive-rule "?gen264 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ) ( not ( max_years_in_imprisonment ( value 8 ) ) ) => ( max_years_in_imprisonment ( value 8 ) )")
   (production-rule "( defrule pen2-deductive-gen522 ( declare ( salience ( calc-salience max_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen264 ) ( is-a zk_145_ubistvo_na_mah ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_years_in_imprisonment ) ( value 8 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 8 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_years_in_imprisonment 8 ) ) ) ( make-instance ?oid of max_years_in_imprisonment ( value 8 ) ) )")
   (derived-class max_years_in_imprisonment))

([pen1-deductive] of ntm-deductive-rule
   (pos-name pen1-deductive-gen521)
   (depends-on zk_145_ubistvo_na_mah min_years_in_imprisonment)
   (implies min_years_in_imprisonment)
   (deductive-rule "?gen255 <- ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ) ( not ( min_years_in_imprisonment ( value 1 ) ) ) => ( min_years_in_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen1-deductive-gen521 ( declare ( salience ( calc-salience min_years_in_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen255 ) ( is-a zk_145_ubistvo_na_mah ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_years_in_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_years_in_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_years_in_imprisonment 1 ) ) ) ( make-instance ?oid of min_years_in_imprisonment ( value 1 ) ) )")
   (derived-class min_years_in_imprisonment))

([rule23-deductive] of ntm-deductive-rule
   (pos-name rule23-deductive-gen520)
   (depends-on lc:case zk_151b_prinudna_sterilizacija)
   (implies zk_151b_prinudna_sterilizacija)
   (deductive-rule "?gen246 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:prinudna_sterilizacija \"yes\" ) ) ( not ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ) ) => ( zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) )")
   (production-rule "( defrule rule23-deductive-gen520 ( declare ( salience ( calc-salience zk_151b_prinudna_sterilizacija ) ) ) ( run-deductive-rules ) ( object ( name ?gen246 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:prinudna_sterilizacija \"yes\" ) ) ( not ( object ( is-a zk_151b_prinudna_sterilizacija ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_151b_prinudna_sterilizacija ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_151b_prinudna_sterilizacija ?Defendant ) ) ) ( make-instance ?oid of zk_151b_prinudna_sterilizacija ( defendant ?Defendant ) ) )")
   (derived-class zk_151b_prinudna_sterilizacija))

([rule22-deductive] of ntm-deductive-rule
   (pos-name rule22-deductive-gen519)
   (depends-on lc:case zk_151a_sakacenje_zenskih_genitalija)
   (implies zk_151a_sakacenje_zenskih_genitalija)
   (deductive-rule "?gen237 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:sakacenje_zenskih_genitalija \"yes\" ) ) ( not ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ) ) => ( zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) )")
   (production-rule "( defrule rule22-deductive-gen519 ( declare ( salience ( calc-salience zk_151a_sakacenje_zenskih_genitalija ) ) ) ( run-deductive-rules ) ( object ( name ?gen237 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:sakacenje_zenskih_genitalija \"yes\" ) ) ( not ( object ( is-a zk_151a_sakacenje_zenskih_genitalija ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_151a_sakacenje_zenskih_genitalija ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_151a_sakacenje_zenskih_genitalija ?Defendant ) ) ) ( make-instance ?oid of zk_151a_sakacenje_zenskih_genitalija ( defendant ?Defendant ) ) )")
   (derived-class zk_151a_sakacenje_zenskih_genitalija))

([rule21-deductive] of ntm-deductive-rule
   (pos-name rule21-deductive-gen518)
   (depends-on lc:case lc:case lc:case lc:case zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice)
   (deductive-rule "?gen219 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen220 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ?gen221 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ) ?gen222 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ) ( not ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ) => ( zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) )")
   (production-rule "( defrule rule21-deductive-gen518 ( declare ( salience ( calc-salience zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ) ) ) ( run-deductive-rules ) ( object ( name ?gen219 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ( object ( name ?gen220 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ( object ( name ?gen221 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ) ( object ( name ?gen222 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ) ( not ( object ( is-a zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ?Defendant ) ) ) ( make-instance ?oid of zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) )")
   (derived-class zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice))

([rule20-deductive] of ntm-deductive-rule
   (pos-name rule20-deductive-gen517)
   (depends-on lc:case lc:case zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (deductive-rule "?gen207 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ?gen208 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ) ( not ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ) => ( zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) )")
   (production-rule "( defrule rule20-deductive-gen517 ( declare ( salience ( calc-salience zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ) ) ( run-deductive-rules ) ( object ( name ?gen207 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ( object ( name ?gen208 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ) ( not ( object ( is-a zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ?Defendant ) ) ) ( make-instance ?oid of zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) )")
   (derived-class zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice))

([rule19-deductive] of ntm-deductive-rule
   (pos-name rule19-deductive-gen516)
   (depends-on lc:case lc:case zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (implies zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice)
   (deductive-rule "?gen195 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen196 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ) ( not ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) ) => ( zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) )")
   (production-rule "( defrule rule19-deductive-gen516 ( declare ( salience ( calc-salience zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ) ) ( run-deductive-rules ) ( object ( name ?gen195 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ( object ( name ?gen196 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice \"yes\" ) ) ( not ( object ( is-a zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ?Defendant ) ) ) ( make-instance ?oid of zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice ( defendant ?Defendant ) ) )")
   (derived-class zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice))

([rule18-deductive] of ntm-deductive-rule
   (pos-name rule18-deductive-gen515)
   (depends-on lc:case lc:case lc:case zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata)
   (implies zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata)
   (deductive-rule "?gen180 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen181 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ?gen182 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata \"yes\" ) ) ( not ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ) ) => ( zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) )")
   (production-rule "( defrule rule18-deductive-gen515 ( declare ( salience ( calc-salience zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ) ) ) ( run-deductive-rules ) ( object ( name ?gen180 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ( object ( name ?gen181 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ( object ( name ?gen182 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata \"yes\" ) ) ( not ( object ( is-a zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ?Defendant ) ) ) ( make-instance ?oid of zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata ( defendant ?Defendant ) ) )")
   (derived-class zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata))

([rule17-deductive] of ntm-deductive-rule
   (pos-name rule17-deductive-gen514)
   (depends-on lc:case lc:case lc:case zk_151_teska_tjelesna_povreda_i_nastupila_smrt)
   (implies zk_151_teska_tjelesna_povreda_i_nastupila_smrt)
   (deductive-rule "?gen165 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen166 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ) ( not ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ) ) => ( zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) )")
   (production-rule "( defrule rule17-deductive-gen514 ( declare ( salience ( calc-salience zk_151_teska_tjelesna_povreda_i_nastupila_smrt ) ) ) ( run-deductive-rules ) ( object ( name ?gen165 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ( object ( name ?gen166 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ( object ( name ?gen167 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda_i_nastupila_smrt \"yes\" ) ) ( not ( object ( is-a zk_151_teska_tjelesna_povreda_i_nastupila_smrt ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_151_teska_tjelesna_povreda_i_nastupila_smrt ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_151_teska_tjelesna_povreda_i_nastupila_smrt ?Defendant ) ) ) ( make-instance ?oid of zk_151_teska_tjelesna_povreda_i_nastupila_smrt ( defendant ?Defendant ) ) )")
   (derived-class zk_151_teska_tjelesna_povreda_i_nastupila_smrt))

([rule16-deductive] of ntm-deductive-rule
   (pos-name rule16-deductive-gen513)
   (depends-on lc:case zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (implies zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (deductive-rule "?gen156 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"no\" ) ) ( not ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ) ) => ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) )")
   (production-rule "( defrule rule16-deductive-gen513 ( declare ( salience ( calc-salience zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ) ) ( run-deductive-rules ) ( object ( name ?gen156 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"no\" ) ) ( not ( object ( is-a zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ?Defendant ) ) ) ( make-instance ?oid of zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ) )")
   (derived-class zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost))

([rule15-deductive] of ntm-deductive-rule
   (pos-name rule15-deductive-gen512)
   (depends-on lc:case zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (implies zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost)
   (deductive-rule "?gen147 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ( not ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ) ) => ( zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) )")
   (production-rule "( defrule rule15-deductive-gen512 ( declare ( salience ( calc-salience zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ) ) ( run-deductive-rules ) ( object ( name ?gen147 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost \"yes\" ) ) ( not ( object ( is-a zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ?Defendant ) ) ) ( make-instance ?oid of zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost ( defendant ?Defendant ) ) )")
   (derived-class zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost))

([rule14-deductive] of ntm-deductive-rule
   (pos-name rule14-deductive-gen511)
   (depends-on lc:case zk_151_teska_tjelesna_povreda)
   (implies zk_151_teska_tjelesna_povreda)
   (deductive-rule "?gen138 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ) ( not ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ) ) => ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) )")
   (production-rule "( defrule rule14-deductive-gen511 ( declare ( salience ( calc-salience zk_151_teska_tjelesna_povreda ) ) ) ( run-deductive-rules ) ( object ( name ?gen138 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ) ( not ( object ( is-a zk_151_teska_tjelesna_povreda ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_151_teska_tjelesna_povreda ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_151_teska_tjelesna_povreda ?Defendant ) ) ) ( make-instance ?oid of zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ) )")
   (derived-class zk_151_teska_tjelesna_povreda))

([rule13-deductive] of ntm-deductive-rule
   (pos-name rule13-deductive-gen510)
   (depends-on lc:case zk_151_teska_tjelesna_povreda)
   (implies zk_151_teska_tjelesna_povreda)
   (deductive-rule "?gen129 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ( not ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ) ) => ( zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) )")
   (production-rule "( defrule rule13-deductive-gen510 ( declare ( salience ( calc-salience zk_151_teska_tjelesna_povreda ) ) ) ( run-deductive-rules ) ( object ( name ?gen129 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ( not ( object ( is-a zk_151_teska_tjelesna_povreda ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_151_teska_tjelesna_povreda ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_151_teska_tjelesna_povreda ?Defendant ) ) ) ( make-instance ?oid of zk_151_teska_tjelesna_povreda ( defendant ?Defendant ) ) )")
   (derived-class zk_151_teska_tjelesna_povreda))

([rule12-deductive] of ntm-deductive-rule
   (pos-name rule12-deductive-gen509)
   (depends-on lc:case lc:case zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi)
   (implies zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi)
   (deductive-rule "?gen117 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen118 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:gonjenje_se_preduzima_po_privatnoj_tuzbi \"yes\" ) ) ( not ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ) ) => ( zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) )")
   (production-rule "( defrule rule12-deductive-gen509 ( declare ( salience ( calc-salience zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ) ) ) ( run-deductive-rules ) ( object ( name ?gen117 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ( object ( name ?gen118 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:gonjenje_se_preduzima_po_privatnoj_tuzbi \"yes\" ) ) ( not ( object ( is-a zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ?Defendant ) ) ) ( make-instance ?oid of zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi ( defendant ?Defendant ) ) )")
   (derived-class zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi))

([rule11-deductive] of ntm-deductive-rule
   (pos-name rule11-deductive-gen508)
   (depends-on lc:case lc:case zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (deductive-rule "?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ?gen106 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog \"yes\" ) ) ( not ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ) ) => ( zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) )")
   (production-rule "( defrule rule11-deductive-gen508 ( declare ( salience ( calc-salience zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) ) ( run-deductive-rules ) ( object ( name ?gen105 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ( object ( name ?gen106 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog \"yes\" ) ) ( not ( object ( is-a zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ?Defendant ) ) ) ( make-instance ?oid of zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ) )")
   (derived-class zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem))

([rule10-deductive] of ntm-deductive-rule
   (pos-name rule10-deductive-gen507)
   (depends-on lc:case zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (deductive-rule "?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ) ( not ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ) ) => ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10-deductive-gen507 ( declare ( salience ( calc-salience zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) ) ( run-deductive-rules ) ( object ( name ?gen96 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ) ( not ( object ( is-a zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ?Defendant ) ) ) ( make-instance ?oid of zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ) )")
   (derived-class zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem))

([rule9-deductive] of ntm-deductive-rule
   (pos-name rule9-deductive-gen506)
   (depends-on lc:case zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (implies zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem)
   (deductive-rule "?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ( not ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ) ) => ( zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9-deductive-gen506 ( declare ( salience ( calc-salience zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ) ) ( run-deductive-rules ) ( object ( name ?gen87 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ( not ( object ( is-a zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ?Defendant ) ) ) ( make-instance ?oid of zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem ( defendant ?Defendant ) ) )")
   (derived-class zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem))

([rule8-deductive] of ntm-deductive-rule
   (pos-name rule8-deductive-gen505)
   (depends-on lc:case zk_152_laka_tjelesna_povreda)
   (implies zk_152_laka_tjelesna_povreda)
   (deductive-rule "?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ) ( not ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ) ) => ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8-deductive-gen505 ( declare ( salience ( calc-salience zk_152_laka_tjelesna_povreda ) ) ) ( run-deductive-rules ) ( object ( name ?gen78 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"no\" ) ) ( not ( object ( is-a zk_152_laka_tjelesna_povreda ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_152_laka_tjelesna_povreda ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_152_laka_tjelesna_povreda ?Defendant ) ) ) ( make-instance ?oid of zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ) )")
   (derived-class zk_152_laka_tjelesna_povreda))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen504)
   (depends-on lc:case zk_152_laka_tjelesna_povreda)
   (implies zk_152_laka_tjelesna_povreda)
   (deductive-rule "?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ( not ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ) ) => ( zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen504 ( declare ( salience ( calc-salience zk_152_laka_tjelesna_povreda ) ) ) ( run-deductive-rules ) ( object ( name ?gen69 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi \"yes\" ) ) ( not ( object ( is-a zk_152_laka_tjelesna_povreda ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_152_laka_tjelesna_povreda ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_152_laka_tjelesna_povreda ?Defendant ) ) ) ( make-instance ?oid of zk_152_laka_tjelesna_povreda ( defendant ?Defendant ) ) )")
   (derived-class zk_152_laka_tjelesna_povreda))

([rule6-deductive] of ntm-deductive-rule
   (pos-name rule6-deductive-gen503)
   (depends-on lc:case zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (implies zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (deductive-rule "?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"no\" ) ) ( not ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ) ) => ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6-deductive-gen503 ( declare ( salience ( calc-salience zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ) ) ( run-deductive-rules ) ( object ( name ?gen60 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"no\" ) ) ( not ( object ( is-a zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ?Defendant ) ) ) ( make-instance ?oid of zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ) )")
   (derived-class zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji))

([rule5-deductive] of ntm-deductive-rule
   (pos-name rule5-deductive-gen502)
   (depends-on lc:case zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (implies zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji)
   (deductive-rule "?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"yes\" ) ) ( not ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ) ) => ( zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5-deductive-gen502 ( declare ( salience ( calc-salience zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ) ) ( run-deductive-rules ) ( object ( name ?gen51 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi \"yes\" ) ) ( not ( object ( is-a zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ?Defendant ) ) ) ( make-instance ?oid of zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji ( defendant ?Defendant ) ) )")
   (derived-class zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji))

([rule4-deductive] of ntm-deductive-rule
   (pos-name rule4-deductive-gen501)
   (depends-on lc:case zk_153_ucestvovanje_u_tuci)
   (implies zk_153_ucestvovanje_u_tuci)
   (deductive-rule "?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"no\" ) ) ( not ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ) ) => ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4-deductive-gen501 ( declare ( salience ( calc-salience zk_153_ucestvovanje_u_tuci ) ) ) ( run-deductive-rules ) ( object ( name ?gen42 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"no\" ) ) ( not ( object ( is-a zk_153_ucestvovanje_u_tuci ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_153_ucestvovanje_u_tuci ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_153_ucestvovanje_u_tuci ?Defendant ) ) ) ( make-instance ?oid of zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ) )")
   (derived-class zk_153_ucestvovanje_u_tuci))

([rule3-deductive] of ntm-deductive-rule
   (pos-name rule3-deductive-gen500)
   (depends-on lc:case zk_153_ucestvovanje_u_tuci)
   (implies zk_153_ucestvovanje_u_tuci)
   (deductive-rule "?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"yes\" ) ) ( not ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ) ) => ( zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3-deductive-gen500 ( declare ( salience ( calc-salience zk_153_ucestvovanje_u_tuci ) ) ) ( run-deductive-rules ) ( object ( name ?gen33 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda \"yes\" ) ) ( not ( object ( is-a zk_153_ucestvovanje_u_tuci ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_153_ucestvovanje_u_tuci ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_153_ucestvovanje_u_tuci ?Defendant ) ) ) ( make-instance ?oid of zk_153_ucestvovanje_u_tuci ( defendant ?Defendant ) ) )")
   (derived-class zk_153_ucestvovanje_u_tuci))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen499)
   (depends-on lc:case zk_145_ubistvo_na_mah)
   (implies zk_145_ubistvo_na_mah)
   (deductive-rule "?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"no\" ) ) ( not ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ) ) => ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen499 ( declare ( salience ( calc-salience zk_145_ubistvo_na_mah ) ) ) ( run-deductive-rules ) ( object ( name ?gen24 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"no\" ) ) ( not ( object ( is-a zk_145_ubistvo_na_mah ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_145_ubistvo_na_mah ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_145_ubistvo_na_mah ?Defendant ) ) ) ( make-instance ?oid of zk_145_ubistvo_na_mah ( defendant ?Defendant ) ) )")
   (derived-class zk_145_ubistvo_na_mah))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen498)
   (depends-on lc:case zk_145_ubistvo_na_mah)
   (implies zk_145_ubistvo_na_mah)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"yes\" ) ) ( not ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) ) ) => ( zk_145_ubistvo_na_mah ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen498 ( declare ( salience ( calc-salience zk_145_ubistvo_na_mah ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:ubistvo_na_mah \"yes\" ) ) ( not ( object ( is-a zk_145_ubistvo_na_mah ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat zk_145_ubistvo_na_mah ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat zk_145_ubistvo_na_mah ?Defendant ) ) ) ( make-instance ?oid of zk_145_ubistvo_na_mah ( defendant ?Defendant ) ) )")
   (derived-class zk_145_ubistvo_na_mah))

