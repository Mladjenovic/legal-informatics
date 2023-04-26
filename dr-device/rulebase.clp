(import-rdf "facts.rdf")
		(export-rdf export.rdf  
                zk_145_ubistvo_na_mah
                zk_153_ucestvovanje_u_tuci
                zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji
                zk_152_laka_tjelesna_povreda
                zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem
                zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem
                zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi
                zk_151_teska_tjelesna_povreda
                zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost
                zk_151_teska_tjelesna_povreda_i_nastupila_smrt
                zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata
                zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice
                zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice
                zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice
                zk_151a_sakacenje_zenskih_genitalija
                zk_151b_prinudna_sterilizacija
                min_years_in_imprisonment
                max_years_in_imprisonment
                min_months_in_imprisonment
                months_in_imprisonment
                years_in_imprisonment
                novcana_kazna
                izrecena_opomena
                gonjenje_po_privatnoj_tuzbi
            )
		(export-proof proof.ruleml)
		
(defeasiblerule rule1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:ubistvo_na_mah "yes")
	) 
  => 
	 
	(zk_145_ubistvo_na_mah 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule2
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:ubistvo_na_mah "no")
	) 
  => 
	
		(not  
	(zk_145_ubistvo_na_mah 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule3
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda "yes")
	) 
  => 
	 
	(zk_153_ucestvovanje_u_tuci 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule4
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:neko_lisen_zivota_ili_nanesena_teska_telesna_povreda "no")
	) 
  => 
	
		(not  
	(zk_153_ucestvovanje_u_tuci 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule5
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi "yes")
	) 
  => 
	 
	(zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule6
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi "no")
	) 
  => 
	
		(not  
	(zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule7
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi "yes")
	) 
  => 
	 
	(zk_152_laka_tjelesna_povreda 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule8
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi "no")
	) 
  => 
	
		(not  
	(zk_152_laka_tjelesna_povreda 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule9
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi "yes")
	) 
  => 
	 
	(zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule10
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi "no")
	) 
  => 
	
		(not  
	(zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule11
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog "yes")
	) 
  => 
	 
	(zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule12
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:lako_telesno_povrijedi_ili_mu_zdravlje_narusi "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:gonjenje_se_preduzima_po_privatnoj_tuzbi "yes")
	) 
  => 
	 
	(zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule13
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi "yes")
	) 
  => 
	 
	(zk_151_teska_tjelesna_povreda 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule14
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi "no")
	) 
  => 
	
		(not  
	(zk_151_teska_tjelesna_povreda 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule15
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost "yes")
	) 
  => 
	 
	(zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule16
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost "no")
	) 
  => 
	
		(not  
	(zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule17
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:teska_telesna_povreda_i_nastupila_smrt "yes")
	) 
  => 
	 
	(zk_151_teska_tjelesna_povreda_i_nastupila_smrt 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule18
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata "yes")
	) 
  => 
	 
	(zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule19
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice "yes")
	) 
  => 
	 
	(zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule20
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice "yes")
	) 
  => 
	 
	(zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule21
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:tesko_telesno_povrijedi_ili_mu_zdravlje_narusi "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:teska_telesna_povreda_i_nastupila_smrt "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice "yes")
	) 
  => 
	 
	(zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule22
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:sakacenje_zenskih_genitalija "yes")
	) 
  => 
	 
	(zk_151a_sakacenje_zenskih_genitalija 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule23
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:prinudna_sterilizacija "yes")
	) 
  => 
	 
	(zk_151b_prinudna_sterilizacija 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule pen1
		 
	(zk_145_ubistvo_na_mah 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_years_in_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen2
		 
	(zk_145_ubistvo_na_mah 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_years_in_imprisonment 
		(
		 value 8)
	) 
) 
	
(defeasiblerule pen3
		 
	(zk_153_ucestvovanje_u_tuci 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_months_in_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen4
		 
	(zk_153_ucestvovanje_u_tuci 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_years_in_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen5
		 
	(zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(novcana_kazna 
		(
		 value 0000)
	) 
) 
	
(defeasiblerule pen6
		 
	(zk_154_ugrozavanjem_opasnim_orudjem_pri_tuci_i_svadji 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(months_in_imprisonment 
		(
		 value 6)
	) 
) 
	
(defeasiblerule pen7
		 
	(zk_152_laka_tjelesna_povreda 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(novcana_kazna 
		(
		 value 0000)
	) 
) 
	
(defeasiblerule pen8
		 
	(zk_152_laka_tjelesna_povreda 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(years_in_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen9
		 
	(zk_152_laka_tjelesna_povreda_sa_oruzjem_orudjem 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_years_in_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen10
		 
	(zk_152_opomena_laka_tjelesna_povreda_sa_oruzjem_orudjem 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(izrecena_opomena 
		(
		 value true)
	) 
) 
	
(defeasiblerule pen11
		 
	(zk_152_laka_tjelesna_povreda_gonjenje_po_privatnoj_tuzbi 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(gonjenje_po_privatnoj_tuzbi 
		(
		 value true)
	) 
) 
	
(defeasiblerule pen12
		 
	(zk_151_teska_tjelesna_povreda 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_months_in_imprisonment 
		(
		 value 6)
	) 
) 
	
(defeasiblerule pen13
		 
	(zk_151_teska_tjelesna_povreda 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_years_in_imprisonment 
		(
		 value 5)
	) 
) 
	
(defeasiblerule pen14
		 
	(zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_years_in_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen15
		 
	(zk_151_teska_tjelesna_povreda_naneta_teska_doveden_zivot_u_opasnost_ili_naneta_trajna_nesposobnost 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_years_in_imprisonment 
		(
		 value 8)
	) 
) 
	
(defeasiblerule pen16
		 
	(zk_151_teska_tjelesna_povreda_i_nastupila_smrt 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_years_in_imprisonment 
		(
		 value 2)
	) 
) 
	
(defeasiblerule pen17
		 
	(zk_151_teska_tjelesna_povreda_i_nastupila_smrt 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_years_in_imprisonment 
		(
		 value 12)
	) 
) 
	
(defeasiblerule pen18
		 
	(zk_151_teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_years_in_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen19
		 
	(zk_151_tesko_telesno_povrijedi_ili_mu_zdravlje_narusi_ucinjeno_na_mah_doveden_u_razdrazenost_bez_svoje_krivice 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_years_in_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen20
		 
	(zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_months_in_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen21
		 
	(zk_151_teska_telesna_povreda_ili_zdravlje_tesko_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_na_mah_doveden_u_razdrazenost_bez_svoje_krivice 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_years_in_imprisonment 
		(
		 value 4)
	) 
) 
	
(defeasiblerule pen22
		 
	(zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_months_in_imprisonment 
		(
		 value 6)
	) 
) 
	
(defeasiblerule pen23
		 
	(zk_151_teska_telesna_povreda_i_nastupila_smrt_doveden_u_razdrazenost_bez_svoje_krivice 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_years_in_imprisonment 
		(
		 value 5)
	) 
) 
	
(defeasiblerule pen24
		 
	(zk_151a_sakacenje_zenskih_genitalija 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_years_in_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen25
		 
	(zk_151a_sakacenje_zenskih_genitalija 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_years_in_imprisonment 
		(
		 value 8)
	) 
) 
	
(defeasiblerule pen26
		 
	(zk_151b_prinudna_sterilizacija 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_months_in_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen27
		 
	(zk_151b_prinudna_sterilizacija 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_years_in_imprisonment 
		(
		 value 5)
	) 
) 
	