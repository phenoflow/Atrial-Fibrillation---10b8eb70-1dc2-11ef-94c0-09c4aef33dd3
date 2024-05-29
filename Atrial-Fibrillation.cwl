cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  atrial-fibrillation-flutter---primary:
    run: atrial-fibrillation-flutter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  atrial-fibrillation-ablat---primary:
    run: atrial-fibrillation-ablat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-flutter---primary/output
  fibrillation---primary:
    run: fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-ablat---primary/output
  atrial-fibrillation---primary:
    run: atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: fibrillation---primary/output
  atrial-fibrillation-venosus---primary:
    run: atrial-fibrillation-venosus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation---primary/output
  atrial-fibrillation-connect---primary:
    run: atrial-fibrillation-connect---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-venosus---primary/output
  persistent-atrial-fibrillation---primary:
    run: persistent-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-connect---primary/output
  atrial-fibrillation-valvectomy---primary:
    run: atrial-fibrillation-valvectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: persistent-atrial-fibrillation---primary/output
  recipient-atrial-fibrillation---primary:
    run: recipient-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-valvectomy---primary/output
  atrial-fibrillation-blame---primary:
    run: atrial-fibrillation-blame---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: recipient-atrial-fibrillation---primary/output
  atrial-fibrillation-starr---primary:
    run: atrial-fibrillation-starr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-blame---primary/output
  atrial-fibrillation-suspected---primary:
    run: atrial-fibrillation-suspected---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-starr---primary/output
  atrial-fibrillation-related---primary:
    run: atrial-fibrillation-related---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-suspected---primary/output
  atrial-fibrillation-phlebitis---primary:
    run: atrial-fibrillation-phlebitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-related---primary/output
  atrial-fibrillation-thrombosis---primary:
    run: atrial-fibrillation-thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-phlebitis---primary/output
  personal-atrial-fibrillation---primary:
    run: personal-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-thrombosis---primary/output
  femoral-atrial-fibrillation---primary:
    run: femoral-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: personal-atrial-fibrillation---primary/output
  aortopulmonary-atrial-fibrillation---primary:
    run: aortopulmonary-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: femoral-atrial-fibrillation---primary/output
  atrial-fibrillation-delivered---primary:
    run: atrial-fibrillation-delivered---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: aortopulmonary-atrial-fibrillation---primary/output
  atrial-fibrillation-fluid---primary:
    run: atrial-fibrillation-fluid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-delivered---primary/output
  atrioventric-atrial-fibrillation---primary:
    run: atrioventric-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-fluid---primary/output
  atrial-fibrillation-conversion---primary:
    run: atrial-fibrillation-conversion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: atrioventric-atrial-fibrillation---primary/output
  atrial-fibrillation-cardioversion---primary:
    run: atrial-fibrillation-cardioversion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-conversion---primary/output
  atrial-fibrillation-pacemaker---primary:
    run: atrial-fibrillation-pacemaker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-cardioversion---primary/output
  atrial-fibrillation-electrode---primary:
    run: atrial-fibrillation-electrode---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-pacemaker---primary/output
  current-atrial-fibrillation---primary:
    run: current-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-electrode---primary/output
  atrial-fibrillation-defibrillation---primary:
    run: atrial-fibrillation-defibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: current-atrial-fibrillation---primary/output
  atrial-fibrillation-translum---primary:
    run: atrial-fibrillation-translum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-defibrillation---primary/output
  atrial-fibrillation-stimulation---primary:
    run: atrial-fibrillation-stimulation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-translum---primary/output
  subaortic-atrial-fibrillation---primary:
    run: subaortic-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-stimulation---primary/output
  atrial-fibrillation-homograft---primary:
    run: atrial-fibrillation-homograft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: subaortic-atrial-fibrillation---primary/output
  endocardial-atrial-fibrillation---primary:
    run: endocardial-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-homograft---primary/output
  arterial-atrial-fibrillation---primary:
    run: arterial-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: endocardial-atrial-fibrillation---primary/output
  atrial-fibrillation-defects---primary:
    run: atrial-fibrillation-defects---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: arterial-atrial-fibrillation---primary/output
  atrial-fibrillation-cardiac---primary:
    run: atrial-fibrillation-cardiac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-defects---primary/output
  atrial-fibrillation-xenotransplantation---primary:
    run: atrial-fibrillation-xenotransplantation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-cardiac---primary/output
  atrial-fibrillation-ventriculectomy---primary:
    run: atrial-fibrillation-ventriculectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-xenotransplantation---primary/output
  atrial-fibrillation-three---primary:
    run: atrial-fibrillation-three---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-ventriculectomy---primary/output
  atrial-fibrillation-operation---primary:
    run: atrial-fibrillation-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-three---primary/output
  atrial-fibrillation-surgery---primary:
    run: atrial-fibrillation-surgery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-operation---primary/output
  atrial-fibrillation-ligation---primary:
    run: atrial-fibrillation-ligation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-surgery---primary/output
  atrial-fibrillation-incision---primary:
    run: atrial-fibrillation-incision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-ligation---primary/output
  atrial-fibrillation-pathway---primary:
    run: atrial-fibrillation-pathway---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-incision---primary/output
  atrial-fibrillation-thrombus---primary:
    run: atrial-fibrillation-thrombus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-pathway---primary/output
  atrial-fibrillation-unspecified---primary:
    run: atrial-fibrillation-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-thrombus---primary/output
  atrial-fibrillation-close---primary:
    run: atrial-fibrillation-close---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-unspecified---primary/output
  atrial-fibrillation-autograft---primary:
    run: atrial-fibrillation-autograft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-close---primary/output
  hypoplastic-atrial-fibrillation---primary:
    run: hypoplastic-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-autograft---primary/output
  atrial-fibrillation-bypass---primary:
    run: atrial-fibrillation-bypass---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: hypoplastic-atrial-fibrillation---primary/output
  single-atrial-fibrillation---primary:
    run: single-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-bypass---primary/output
  atrial-fibrillation-fallottype---primary:
    run: atrial-fibrillation-fallottype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: single-atrial-fibrillation---primary/output
  atrial-fibrillation-pericardium---primary:
    run: atrial-fibrillation-pericardium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-fallottype---primary/output
  prosthetic-atrial-fibrillation---primary:
    run: prosthetic-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-pericardium---primary/output
  atrial-fibrillation-ventr---primary:
    run: atrial-fibrillation-ventr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: prosthetic-atrial-fibrillation---primary/output
  atrial-fibrillation-graft---primary:
    run: atrial-fibrillation-graft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-ventr---primary/output
  atrial-fibrillation-aneurysm---primary:
    run: atrial-fibrillation-aneurysm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-graft---primary/output
  atrial-fibrillation-valve---primary:
    run: atrial-fibrillation-valve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-aneurysm---primary/output
  atrial-fibrillation-septum---primary:
    run: atrial-fibrillation-septum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-valve---primary/output
  atrial-fibrillation-bjorkshiley---primary:
    run: atrial-fibrillation-bjorkshiley---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-septum---primary/output
  cardiothoracic-atrial-fibrillation---primary:
    run: cardiothoracic-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-bjorkshiley---primary/output
  atrial-fibrillation-transpo---primary:
    run: atrial-fibrillation-transpo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: cardiothoracic-atrial-fibrillation---primary/output
  atrial-fibrillation-rupture---primary:
    run: atrial-fibrillation-rupture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-transpo---primary/output
  atrial-fibrillation-valved---primary:
    run: atrial-fibrillation-valved---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-rupture---primary/output
  atrial-fibrillation-artery---primary:
    run: atrial-fibrillation-artery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-valved---primary/output
  atrial-fibrillation-anastomosis---primary:
    run: atrial-fibrillation-anastomosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-artery---primary/output
  epicardial-atrial-fibrillation---primary:
    run: epicardial-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-anastomosis---primary/output
  atrial-fibrillation-injury---primary:
    run: atrial-fibrillation-injury---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: epicardial-atrial-fibrillation---primary/output
  atrial-fibrillation-atrium---primary:
    run: atrial-fibrillation-atrium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-injury---primary/output
  atrial-fibrillation-refashioning---primary:
    run: atrial-fibrillation-refashioning---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-atrium---primary/output
  atrial-fibrillation-vegetation---primary:
    run: atrial-fibrillation-vegetation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-refashioning---primary/output
  papillary-atrial-fibrillation---primary:
    run: papillary-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-vegetation---primary/output
  atrial-fibrillation-valvotomy---primary:
    run: atrial-fibrillation-valvotomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: papillary-atrial-fibrillation---primary/output
  atrial-fibrillation-septostomy---primary:
    run: atrial-fibrillation-septostomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-valvotomy---primary/output
  atrial-fibrillation-massage---primary:
    run: atrial-fibrillation-massage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-septostomy---primary/output
  supraaortic-atrial-fibrillation---primary:
    run: supraaortic-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-massage---primary/output
  atrial-fibrillation-implant---primary:
    run: atrial-fibrillation-implant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: supraaortic-atrial-fibrillation---primary/output
  atrial-fibrillation-tumour---primary:
    run: atrial-fibrillation-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-implant---primary/output
  primum-atrial-fibrillation---primary:
    run: primum-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-tumour---primary/output
  atrial-fibrillation-septectomy---primary:
    run: atrial-fibrillation-septectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: primum-atrial-fibrillation---primary/output
  atrial-fibrillation-conduct---primary:
    run: atrial-fibrillation-conduct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-septectomy---primary/output
  biventricular-atrial-fibrillation---primary:
    run: biventricular-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-conduct---primary/output
  angioplasty-atrial-fibrillation---primary:
    run: angioplasty-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: biventricular-atrial-fibrillation---primary/output
  atrial-fibrillation-transplanted---primary:
    run: atrial-fibrillation-transplanted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: angioplasty-atrial-fibrillation---primary/output
  atrial-fibrillation-pericardiectomy---primary:
    run: atrial-fibrillation-pericardiectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-transplanted---primary/output
  atrial-fibrillation-septation---primary:
    run: atrial-fibrillation-septation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-pericardiectomy---primary/output
  atrial-fibrillation-apparatus---primary:
    run: atrial-fibrillation-apparatus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-septation---primary/output
  biopsy-atrial-fibrillation---primary:
    run: biopsy-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-apparatus---primary/output
  atrial-fibrillation-cardiotachygraphy---primary:
    run: atrial-fibrillation-cardiotachygraphy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: biopsy-atrial-fibrillation---primary/output
  atrial-fibrillation-creation---primary:
    run: atrial-fibrillation-creation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-cardiotachygraphy---primary/output
  intravenous-atrial-fibrillation---primary:
    run: intravenous-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-creation---primary/output
  atrial-fibrillation-assist---primary:
    run: atrial-fibrillation-assist---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: intravenous-atrial-fibrillation---primary/output
  atrial-fibrillation-lesion---primary:
    run: atrial-fibrillation-lesion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-assist---primary/output
  atrial-fibrillation-endarterectomy---primary:
    run: atrial-fibrillation-endarterectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-lesion---primary/output
  atrial-fibrillation-inspection---primary:
    run: atrial-fibrillation-inspection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-endarterectomy---primary/output
  atrial-fibrillation-mammary---primary:
    run: atrial-fibrillation-mammary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-inspection---primary/output
  atrial-fibrillation-malformation---primary:
    run: atrial-fibrillation-malformation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-mammary---primary/output
  atrial-fibrillation-method---primary:
    run: atrial-fibrillation-method---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-malformation---primary/output
  atrial-fibrillation-pulmon---primary:
    run: atrial-fibrillation-pulmon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-method---primary/output
  valvuloplasty-atrial-fibrillation---primary:
    run: valvuloplasty-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-pulmon---primary/output
  atrial-fibrillation-chest---primary:
    run: atrial-fibrillation-chest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: valvuloplasty-atrial-fibrillation---primary/output
  atrial-fibrillation-revascularisation---primary:
    run: atrial-fibrillation-revascularisation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-chest---primary/output
  arteriovenous-atrial-fibrillation---primary:
    run: arteriovenous-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-revascularisation---primary/output
  atrial-fibrillation-myectomy---primary:
    run: atrial-fibrillation-myectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: arteriovenous-atrial-fibrillation---primary/output
  atrial-fibrillation-exploration---primary:
    run: atrial-fibrillation-exploration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-myectomy---primary/output
  atrial-fibrillation-drainage---primary:
    run: atrial-fibrillation-drainage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-exploration---primary/output
  atrial-fibrillation-bridge---primary:
    run: atrial-fibrillation-bridge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-drainage---primary/output
  atrial-fibrillation-tendineae---primary:
    run: atrial-fibrillation-tendineae---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-bridge---primary/output
  sequential-atrial-fibrillation---primary:
    run: sequential-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-tendineae---primary/output
  atrial-fibrillation-pulsation---primary:
    run: atrial-fibrillation-pulsation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: sequential-atrial-fibrillation---primary/output
  atrial-fibrillation-infundibulectomy---primary:
    run: atrial-fibrillation-infundibulectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-pulsation---primary/output
  annuloplasty-atrial-fibrillation---primary:
    run: annuloplasty-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-infundibulectomy---primary/output
  coronary-atrial-fibrillation---primary:
    run: coronary-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: annuloplasty-atrial-fibrillation---primary/output
  atrial-fibrillation-takedown---primary:
    run: atrial-fibrillation-takedown---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: coronary-atrial-fibrillation---primary/output
  cardiomyoplasty-atrial-fibrillation---primary:
    run: cardiomyoplasty-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-takedown---primary/output
  atrial-fibrillation-letter---primary:
    run: atrial-fibrillation-letter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: cardiomyoplasty-atrial-fibrillation---primary/output
  atrial-fibrillation-invite---primary:
    run: atrial-fibrillation-invite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-letter---primary/output
  atrial-fibrillation-history---primary:
    run: atrial-fibrillation-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-invite---primary/output
  atrial-fibrillation-monitoring---primary:
    run: atrial-fibrillation-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-history---primary/output
  atrial-fibrillation-extremity---primary:
    run: atrial-fibrillation-extremity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-monitoring---primary/output
  atrial-fibrillation-revision---primary:
    run: atrial-fibrillation-revision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-extremity---primary/output
  atrial-fibrillation-tissue---primary:
    run: atrial-fibrillation-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-revision---primary/output
  atrial-fibrillation-balloon---primary:
    run: atrial-fibrillation-balloon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-tissue---primary/output
  correct-atrial-fibrillation---primary:
    run: correct-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-balloon---primary/output
  atrial-fibrillation-sinus---primary:
    run: atrial-fibrillation-sinus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: correct-atrial-fibrillation---primary/output
  truncal-atrial-fibrillation---primary:
    run: truncal-atrial-fibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-sinus---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: truncal-atrial-fibrillation---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
