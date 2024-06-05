cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  antihypertensive-medication-atenix---primary:
    run: antihypertensive-medication-atenix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  antihypertensive-medication-175mg---primary:
    run: antihypertensive-medication-175mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-atenix---primary/output
  antihypertensive-medication-tablet---primary:
    run: antihypertensive-medication-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-175mg---primary/output
  antihypertensive-medication-gopten---primary:
    run: antihypertensive-medication-gopten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-tablet---primary/output
  antihypertensive-medication-neozipine---primary:
    run: antihypertensive-medication-neozipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-gopten---primary/output
  antihypertensive-medication-candesartan---primary:
    run: antihypertensive-medication-candesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-neozipine---primary/output
  antihypertensive-medication-capsule---primary:
    run: antihypertensive-medication-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-candesartan---primary/output
  antihypertensive-medication-tolura---primary:
    run: antihypertensive-medication-tolura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-capsule---primary/output
  antihypertensive-medication-lopresor---primary:
    run: antihypertensive-medication-lopresor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-tolura---primary/output
  antihypertensive-medication-chlor---primary:
    run: antihypertensive-medication-chlor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-lopresor---primary/output
  antihypertensive-medication-400mg---primary:
    run: antihypertensive-medication-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-chlor---primary/output
  antihypertensive-medication-225mg---primary:
    run: antihypertensive-medication-225mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-400mg---primary/output
  antihypertensive-medication-bipranix---primary:
    run: antihypertensive-medication-bipranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-225mg---primary/output
  antihypertensive-medication-cardicor---primary:
    run: antihypertensive-medication-cardicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-bipranix---primary/output
  antihypertensive-medication-coamilofruse---primary:
    run: antihypertensive-medication-coamilofruse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cardicor---primary/output
  antihypertensive-medication-titration---primary:
    run: antihypertensive-medication-titration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-coamilofruse---primary/output
  antihypertensive-medication-aliskiren---primary:
    run: antihypertensive-medication-aliskiren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-titration---primary/output
  antihypertensive-medication-quinil---primary:
    run: antihypertensive-medication-quinil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-aliskiren---primary/output
  antihypertensive-medication-arginine---primary:
    run: antihypertensive-medication-arginine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-quinil---primary/output
  inderal-antihypertensive-medication---primary:
    run: inderal-antihypertensive-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-arginine---primary/output
  antihypertensive-medication-spironolactone---primary:
    run: antihypertensive-medication-spironolactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: inderal-antihypertensive-medication---primary/output
  antihypertensive-medication-250microgram---primary:
    run: antihypertensive-medication-250microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-spironolactone---primary/output
  hypolar-antihypertensive-medication---primary:
    run: hypolar-antihypertensive-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-250microgram---primary/output
  antihypertensive-medication-600mg---primary:
    run: antihypertensive-medication-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: hypolar-antihypertensive-medication---primary/output
  antihypertensive-medication-100mg---primary:
    run: antihypertensive-medication-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-600mg---primary/output
  antihypertensive-medication-securon---primary:
    run: antihypertensive-medication-securon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-100mg---primary/output
  antihypertensive-medication-360mg---primary:
    run: antihypertensive-medication-360mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-securon---primary/output
  antihypertensive-medication-accupro---primary:
    run: antihypertensive-medication-accupro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-360mg---primary/output
  antihypertensive-medication-3125mg---primary:
    run: antihypertensive-medication-3125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-accupro---primary/output
  antihypertensive-medication-cozaarcomp---primary:
    run: antihypertensive-medication-cozaarcomp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-3125mg---primary/output
  antihypertensive-medication-320mg---primary:
    run: antihypertensive-medication-320mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cozaarcomp---primary/output
  antihypertensive-medication-felotens---primary:
    run: antihypertensive-medication-felotens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-320mg---primary/output
  antihypertensive-medication-adalat---primary:
    run: antihypertensive-medication-adalat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-felotens---primary/output
  antihypertensive-medication-180mg---primary:
    run: antihypertensive-medication-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-adalat---primary/output
  antihypertensive-medication-doxazosin---primary:
    run: antihypertensive-medication-doxazosin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-180mg---primary/output
  antihypertensive-medication-angitil---primary:
    run: antihypertensive-medication-angitil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-doxazosin---primary/output
  antihypertensive-medication-neonaclex---primary:
    run: antihypertensive-medication-neonaclex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-angitil---primary/output
  antihypertensive-medication-150mg---primary:
    run: antihypertensive-medication-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-neonaclex---primary/output
  antihypertensive-medication-captopril---primary:
    run: antihypertensive-medication-captopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-150mg---primary/output
  antihypertensive-medication-syscor---primary:
    run: antihypertensive-medication-syscor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-captopril---primary/output
  antihypertensive-medication-modifiedrelease---primary:
    run: antihypertensive-medication-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-syscor---primary/output
  antihypertensive-medication-zemret---primary:
    run: antihypertensive-medication-zemret---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-modifiedrelease---primary/output
  antihypertensive-medication-azilsartan---primary:
    run: antihypertensive-medication-azilsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-zemret---primary/output
  antihypertensive-medication-diuril---primary:
    run: antihypertensive-medication-diuril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-azilsartan---primary/output
  antihypertensive-medication-oxprenolol---primary:
    run: antihypertensive-medication-oxprenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-diuril---primary/output
  antihypertensive-medication-500mg---primary:
    run: antihypertensive-medication-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-oxprenolol---primary/output
  antihypertensive-medication-hydralazine---primary:
    run: antihypertensive-medication-hydralazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-500mg---primary/output
  antihypertensive-medication-aprinox---primary:
    run: antihypertensive-medication-aprinox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-hydralazine---primary/output
  sectral-antihypertensive-medication---primary:
    run: sectral-antihypertensive-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-aprinox---primary/output
  antihypertensive-medication-indapamide---primary:
    run: antihypertensive-medication-indapamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: sectral-antihypertensive-medication---primary/output
  antihypertensive-medication-nifedipine---primary:
    run: antihypertensive-medication-nifedipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-indapamide---primary/output
  antihypertensive-medication-univer---primary:
    run: antihypertensive-medication-univer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-nifedipine---primary/output
  antihypertensive-medication-eplerenone---primary:
    run: antihypertensive-medication-eplerenone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-univer---primary/output
  antihypertensive-medication-tritace---primary:
    run: antihypertensive-medication-tritace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-eplerenone---primary/output
  antihypertensive-medication-trandolapril---primary:
    run: antihypertensive-medication-trandolapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-tritace---primary/output
  antihypertensive-medication-200mg---primary:
    run: antihypertensive-medication-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-trandolapril---primary/output
  antihypertensive-medication-ecopace---primary:
    run: antihypertensive-medication-ecopace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-200mg---primary/output
  antihypertensive-medication-losartan---primary:
    run: antihypertensive-medication-losartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-ecopace---primary/output
  antihypertensive-medication-nimodrel---primary:
    run: antihypertensive-medication-nimodrel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-losartan---primary/output
  antihypertensive-medication-pindolol---primary:
    run: antihypertensive-medication-pindolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-nimodrel---primary/output
  antihypertensive-medication-dilcardia---primary:
    run: antihypertensive-medication-dilcardia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-pindolol---primary/output
  antihypertensive-medication-staril---primary:
    run: antihypertensive-medication-staril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-dilcardia---primary/output
  antihypertensive-medication-cozidocapt---primary:
    run: antihypertensive-medication-cozidocapt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-staril---primary/output
  antihypertensive-medication-acebutolol---primary:
    run: antihypertensive-medication-acebutolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cozidocapt---primary/output
  antihypertensive-medication-625mg---primary:
    run: antihypertensive-medication-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-acebutolol---primary/output
  antihypertensive-medication-375mg---primary:
    run: antihypertensive-medication-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-625mg---primary/output
  antihypertensive-medication-coamilozide---primary:
    run: antihypertensive-medication-coamilozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-375mg---primary/output
  antihypertensive-medication-bicarzem---primary:
    run: antihypertensive-medication-bicarzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-coamilozide---primary/output
  antihypertensive-medication-cardilate---primary:
    run: antihypertensive-medication-cardilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-bicarzem---primary/output
  antihypertensive-medication-adizemxl---primary:
    run: antihypertensive-medication-adizemxl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cardilate---primary/output
  antihypertensive-medication-zemtard---primary:
    run: antihypertensive-medication-zemtard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-adizemxl---primary/output
  alkapamid-antihypertensive-medication---primary:
    run: alkapamid-antihypertensive-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-zemtard---primary/output
  antihypertensive-medication-codiovan---primary:
    run: antihypertensive-medication-codiovan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: alkapamid-antihypertensive-medication---primary/output
  antihypertensive-medication-lacidipine---primary:
    run: antihypertensive-medication-lacidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-codiovan---primary/output
  antihypertensive-medication-calchan---primary:
    run: antihypertensive-medication-calchan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-lacidipine---primary/output
  antihypertensive-medication-bisoprolol---primary:
    run: antihypertensive-medication-bisoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-calchan---primary/output
  antihypertensive-medication-tanatril---primary:
    run: antihypertensive-medication-tanatril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-bisoprolol---primary/output
  antihypertensive-medication-furosemide---primary:
    run: antihypertensive-medication-furosemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-tanatril---primary/output
  antihypertensive-medication-dilzem---primary:
    run: antihypertensive-medication-dilzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-furosemide---primary/output
  antihypertensive-medication-keloc---primary:
    run: antihypertensive-medication-keloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-dilzem---primary/output
  antihypertensive-medication-betaprograne---primary:
    run: antihypertensive-medication-betaprograne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-keloc---primary/output
  antihypertensive-medication-coflumactone---primary:
    run: antihypertensive-medication-coflumactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-betaprograne---primary/output
  antihypertensive-medication-noyada---primary:
    run: antihypertensive-medication-noyada---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-coflumactone---primary/output
  antihypertensive-medication-coaprovel---primary:
    run: antihypertensive-medication-coaprovel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-noyada---primary/output
  antihypertensive-medication-cilazapril---primary:
    run: antihypertensive-medication-cilazapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-coaprovel---primary/output
  antihypertensive-medication-angilol---primary:
    run: antihypertensive-medication-angilol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cilazapril---primary/output
  antihypertensive-medication-enalapril---primary:
    run: antihypertensive-medication-enalapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-angilol---primary/output
  antihypertensive-medication-viazem---primary:
    run: antihypertensive-medication-viazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-enalapril---primary/output
  antihypertensive-medication-cordilox---primary:
    run: antihypertensive-medication-cordilox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-viazem---primary/output
  antihypertensive-medication-patches---primary:
    run: antihypertensive-medication-patches---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cordilox---primary/output
  antihypertensive-medication-bedranol---primary:
    run: antihypertensive-medication-bedranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-patches---primary/output
  antihypertensive-medication-erbumine---primary:
    run: antihypertensive-medication-erbumine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-bedranol---primary/output
  antihypertensive-medication-slofedipine---primary:
    run: antihypertensive-medication-slofedipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-erbumine---primary/output
  antihypertensive-medication-lisicostad---primary:
    run: antihypertensive-medication-lisicostad---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-slofedipine---primary/output
  antihypertensive-medication-cabren---primary:
    run: antihypertensive-medication-cabren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-lisicostad---primary/output
  antihypertensive-medication-cardioplen---primary:
    run: antihypertensive-medication-cardioplen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cabren---primary/output
  antihypertensive-medication-felodipine---primary:
    run: antihypertensive-medication-felodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cardioplen---primary/output
  antihypertensive-medication-aldactone---primary:
    run: antihypertensive-medication-aldactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-felodipine---primary/output
  antihypertensive-medication-slozem---primary:
    run: antihypertensive-medication-slozem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-aldactone---primary/output
  antihypertensive-medication-diltiazem---primary:
    run: antihypertensive-medication-diltiazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-slozem---primary/output
  antihypertensive-medication-benph---primary:
    run: antihypertensive-medication-benph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-diltiazem---primary/output
  antihypertensive-medication-doxadura---primary:
    run: antihypertensive-medication-doxadura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-benph---primary/output
  antihypertensive-medication-kaplon---primary:
    run: antihypertensive-medication-kaplon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-doxadura---primary/output
  antihypertensive-medication-quinapril---primary:
    run: antihypertensive-medication-quinapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-kaplon---primary/output
  antihypertensive-medication-cotenidone---primary:
    run: antihypertensive-medication-cotenidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-quinapril---primary/output
  antihypertensive-medication-irbesartan---primary:
    run: antihypertensive-medication-irbesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cotenidone---primary/output
  antihypertensive-medication-valsartan---primary:
    run: antihypertensive-medication-valsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-irbesartan---primary/output
  antihypertensive-medication-minoxidil---primary:
    run: antihypertensive-medication-minoxidil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-valsartan---primary/output
  antihypertensive-medication-drops---primary:
    run: antihypertensive-medication-drops---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-minoxidil---primary/output
  antihypertensive-medication-veratil---primary:
    run: antihypertensive-medication-veratil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-drops---primary/output
  antihypertensive-medication-triamterene---primary:
    run: antihypertensive-medication-triamterene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-veratil---primary/output
  antihypertensive-medication-trimetazidine---primary:
    run: antihypertensive-medication-trimetazidine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-triamterene---primary/output
  antihypertensive-medication-tolucombi---primary:
    run: antihypertensive-medication-tolucombi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-trimetazidine---primary/output
  antihypertensive-medication-nisoldipine---primary:
    run: antihypertensive-medication-nisoldipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-tolucombi---primary/output
  antihypertensive-medication-cardura---primary:
    run: antihypertensive-medication-cardura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-nisoldipine---primary/output
  antihypertensive-medication-nifedipress---primary:
    run: antihypertensive-medication-nifedipress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cardura---primary/output
  transdermal-antihypertensive-medication---primary:
    run: transdermal-antihypertensive-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-nifedipress---primary/output
  antihypertensive-medication-cobetaloc---primary:
    run: antihypertensive-medication-cobetaloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: transdermal-antihypertensive-medication---primary/output
  antihypertensive-medication-sachet---primary:
    run: antihypertensive-medication-sachet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cobetaloc---primary/output
  antihypertensive-medication-coversyl---primary:
    run: antihypertensive-medication-coversyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-sachet---primary/output
  antihypertensive-medication-micardi---primary:
    run: antihypertensive-medication-micardi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-coversyl---primary/output
  antihypertensive-medication-amlodipine---primary:
    run: antihypertensive-medication-amlodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-micardi---primary/output
  antihypertensive-medication-cardene---primary:
    run: antihypertensive-medication-cardene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-amlodipine---primary/output
  antihypertensive-medication-carace---primary:
    run: antihypertensive-medication-carace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cardene---primary/output
  antihypertensive-medication-innovace---primary:
    run: antihypertensive-medication-innovace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-carace---primary/output
  antihypertensive-medication-cyclopenthiazide---primary:
    run: antihypertensive-medication-cyclopenthiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-innovace---primary/output
  antihypertensive-medication-ramipril---primary:
    run: antihypertensive-medication-ramipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cyclopenthiazide---primary/output
  antihypertensive-medication-metoprolol---primary:
    run: antihypertensive-medication-metoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-ramipril---primary/output
  antihypertensive-medication-lercanidipine---primary:
    run: antihypertensive-medication-lercanidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-metoprolol---primary/output
  antihypertensive-medication-starter---primary:
    run: antihypertensive-medication-starter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-lercanidipine---primary/output
  antihypertensive-medication-verapamil---primary:
    run: antihypertensive-medication-verapamil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-starter---primary/output
  lisoretic-antihypertensive-medication---primary:
    run: lisoretic-antihypertensive-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-verapamil---primary/output
  antihypertensive-medication-celiprolol---primary:
    run: antihypertensive-medication-celiprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: lisoretic-antihypertensive-medication---primary/output
  antihypertensive-medication-hytrin---primary:
    run: antihypertensive-medication-hytrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-celiprolol---primary/output
  antihypertensive-medication-captomex---primary:
    run: antihypertensive-medication-captomex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-hytrin---primary/output
  zestoretic-antihypertensive-medication---primary:
    run: zestoretic-antihypertensive-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-captomex---primary/output
  antihypertensive-medication-coracten---primary:
    run: antihypertensive-medication-coracten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: zestoretic-antihypertensive-medication---primary/output
  antihypertensive-medication-300mg---primary:
    run: antihypertensive-medication-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-coracten---primary/output
  antihypertensive-medication-betaloc---primary:
    run: antihypertensive-medication-betaloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-300mg---primary/output
  antihypertensive-medication-alphavase---primary:
    run: antihypertensive-medication-alphavase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-betaloc---primary/output
  antihypertensive-medication-sabervel---primary:
    run: antihypertensive-medication-sabervel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-alphavase---primary/output
  antihypertensive-medication-nadolol---primary:
    run: antihypertensive-medication-nadolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-sabervel---primary/output
  antihypertensive-medication-kentipine---primary:
    run: antihypertensive-medication-kentipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-nadolol---primary/output
  antihypertensive-medication-emcor---primary:
    run: antihypertensive-medication-emcor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-kentipine---primary/output
  antihypertensive-medication-atenolol---primary:
    run: antihypertensive-medication-atenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-emcor---primary/output
  antihypertensive-medication-verapress---primary:
    run: antihypertensive-medication-verapress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-atenolol---primary/output
  antihypertensive-medication-syprol---primary:
    run: antihypertensive-medication-syprol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-verapress---primary/output
  antihypertensive-medication-240mg---primary:
    run: antihypertensive-medication-240mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-syprol---primary/output
  antihypertensive-medication-propranolol---primary:
    run: antihypertensive-medication-propranolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-240mg---primary/output
  antihypertensive-medication-actelsar---primary:
    run: antihypertensive-medication-actelsar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-propranolol---primary/output
  antihypertensive-medication-felogen---primary:
    run: antihypertensive-medication-felogen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-actelsar---primary/output
  pralenal-antihypertensive-medication---primary:
    run: pralenal-antihypertensive-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-felogen---primary/output
  antihypertensive-medication-inspra---primary:
    run: antihypertensive-medication-inspra---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: pralenal-antihypertensive-medication---primary/output
  antihypertensive-medication-calcicard---primary:
    run: antihypertensive-medication-calcicard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-inspra---primary/output
  antihypertensive-medication-odrik---primary:
    run: antihypertensive-medication-odrik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-calcicard---primary/output
  antihypertensive-medication-terazosin---primary:
    run: antihypertensive-medication-terazosin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-odrik---primary/output
  antihypertensive-medication-250mg---primary:
    run: antihypertensive-medication-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-terazosin---primary/output
  antihypertensive-medication-rapranol---primary:
    run: antihypertensive-medication-rapranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-250mg---primary/output
  antihypertensive-medication-zestril---primary:
    run: antihypertensive-medication-zestril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-rapranol---primary/output
  antihypertensive-medication-fosinopril---primary:
    run: antihypertensive-medication-fosinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-zestril---primary/output
  antihypertensive-medication-100microgram---primary:
    run: antihypertensive-medication-100microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-fosinopril---primary/output
  antihypertensive-medication-teveten---primary:
    run: antihypertensive-medication-teveten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-100microgram---primary/output
  antihypertensive-medication-plendil---primary:
    run: antihypertensive-medication-plendil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-teveten---primary/output
  antihypertensive-medication-nidef---primary:
    run: antihypertensive-medication-nidef---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-plendil---primary/output
  antihypertensive-medication-visken---primary:
    run: antihypertensive-medication-visken---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-nidef---primary/output
  antihypertensive-medication-nicardipine---primary:
    run: antihypertensive-medication-nicardipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-visken---primary/output
  antihypertensive-medication-kalten---primary:
    run: antihypertensive-medication-kalten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-nicardipine---primary/output
  antihypertensive-medication-telmisartan---primary:
    run: antihypertensive-medication-telmisartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-kalten---primary/output
  antihypertensive-medication-lisinopril---primary:
    run: antihypertensive-medication-lisinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-telmisartan---primary/output
  antihypertensive-medication-congescor---primary:
    run: antihypertensive-medication-congescor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-lisinopril---primary/output
  antihypertensive-medication-aldactide---primary:
    run: antihypertensive-medication-aldactide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-congescor---primary/output
  antihypertensive-medication-adizemsr---primary:
    run: antihypertensive-medication-adizemsr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-aldactide---primary/output
  antihypertensive-medication-tenormin---primary:
    run: antihypertensive-medication-tenormin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-adizemsr---primary/output
  antihypertensive-medication-amiloride---primary:
    run: antihypertensive-medication-amiloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-tenormin---primary/output
  antihypertensive-medication-celectol---primary:
    run: antihypertensive-medication-celectol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-amiloride---primary/output
  antihypertensive-medication-tildiem---primary:
    run: antihypertensive-medication-tildiem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-celectol---primary/output
  corgaretic-antihypertensive-medication---primary:
    run: corgaretic-antihypertensive-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-tildiem---primary/output
  antihypertensive-medication-acepril---primary:
    run: antihypertensive-medication-acepril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: corgaretic-antihypertensive-medication---primary/output
  antihypertensive-medication-urizide---primary:
    run: antihypertensive-medication-urizide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-acepril---primary/output
  antihypertensive-medication-minipress---primary:
    run: antihypertensive-medication-minipress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-urizide---primary/output
  antihypertensive-medication-moexipril---primary:
    run: antihypertensive-medication-moexipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule182
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-minipress---primary/output
  antihypertensive-medication-corgard---primary:
    run: antihypertensive-medication-corgard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule183
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-moexipril---primary/output
  antihypertensive-medication-caralpha---primary:
    run: antihypertensive-medication-caralpha---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule184
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-corgard---primary/output
  antihypertensive-medication-motens---primary:
    run: antihypertensive-medication-motens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule185
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-caralpha---primary/output
  antihypertensive-medication-horizem---primary:
    run: antihypertensive-medication-horizem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule186
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-motens---primary/output
  antihypertensive-medication-imidapril---primary:
    run: antihypertensive-medication-imidapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule187
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-horizem---primary/output
  antihypertensive-medication-moxonidine---primary:
    run: antihypertensive-medication-moxonidine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule188
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-imidapril---primary/output
  antihypertensive-medication-vascalpha---primary:
    run: antihypertensive-medication-vascalpha---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule189
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-moxonidine---primary/output
  antihypertensive-medication-cascor---primary:
    run: antihypertensive-medication-cascor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule190
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-vascalpha---primary/output
  antihypertensive-medication-adanif---primary:
    run: antihypertensive-medication-adanif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule191
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cascor---primary/output
  antihypertensive-medication-phenoxybenzamine---primary:
    run: antihypertensive-medication-phenoxybenzamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule192
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-adanif---primary/output
  antihypertensive-medication-kenzem---primary:
    run: antihypertensive-medication-kenzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule193
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-phenoxybenzamine---primary/output
  antihypertensive-medication-cardozin---primary:
    run: antihypertensive-medication-cardozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule194
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-kenzem---primary/output
  antihypertensive-medication-methyldopa---primary:
    run: antihypertensive-medication-methyldopa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule195
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-cardozin---primary/output
  antihypertensive-medication-tensopril---primary:
    run: antihypertensive-medication-tensopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule196
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-methyldopa---primary/output
  antihypertensive-medication-zildil---primary:
    run: antihypertensive-medication-zildil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule197
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-tensopril---primary/output
  antihypertensive-medication-disogram---primary:
    run: antihypertensive-medication-disogram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule198
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-zildil---primary/output
  antihypertensive-medication-lopace---primary:
    run: antihypertensive-medication-lopace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule199
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-disogram---primary/output
  antihypertensive-medication-vastarel---primary:
    run: antihypertensive-medication-vastarel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule200
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-lopace---primary/output
  antihypertensive-medication-trasicor---primary:
    run: antihypertensive-medication-trasicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule201
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-vastarel---primary/output
  antihypertensive-medication-tensipine---primary:
    run: antihypertensive-medication-tensipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule202
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-trasicor---primary/output
  antihypertensive-medication-ifirmasta---primary:
    run: antihypertensive-medication-ifirmasta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule203
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-tensipine---primary/output
  antihypertensive-medication-antipressan---primary:
    run: antihypertensive-medication-antipressan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule204
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-ifirmasta---primary/output
  antihypertensive-medication-angiopine---primary:
    run: antihypertensive-medication-angiopine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule205
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-antipressan---primary/output
  antihypertensive-medication-adipine---primary:
    run: antihypertensive-medication-adipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule206
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-angiopine---primary/output
  antihypertensive-medication-olmesartan---primary:
    run: antihypertensive-medication-olmesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule207
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-adipine---primary/output
  antihypertensive-medication-sugar---primary:
    run: antihypertensive-medication-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule208
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-olmesartan---primary/output
  synuretic-antihypertensive-medication---primary:
    run: synuretic-antihypertensive-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule209
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-sugar---primary/output
  antihypertensive-medication-capozide---primary:
    run: antihypertensive-medication-capozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule210
      potentialCases:
        id: potentialCases
        source: synuretic-antihypertensive-medication---primary/output
  antihypertensive-medication-valni---primary:
    run: antihypertensive-medication-valni---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule211
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-capozide---primary/output
  antihypertensive-medication-eprosartan---primary:
    run: antihypertensive-medication-eprosartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule212
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-valni---primary/output
  antihypertensive-medication-edarbi---primary:
    run: antihypertensive-medication-edarbi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule213
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-eprosartan---primary/output
  antihypertensive-medication-200microgram---primary:
    run: antihypertensive-medication-200microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule214
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-edarbi---primary/output
  antihypertensive-medication-bendroflumethiazide---primary:
    run: antihypertensive-medication-bendroflumethiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule215
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-200microgram---primary/output
  antihypertensive-medication-raporsin---primary:
    run: antihypertensive-medication-raporsin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule216
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-bendroflumethiazide---primary/output
  antihypertensive-medication-hypovase---primary:
    run: antihypertensive-medication-hypovase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule217
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-raporsin---primary/output
  antihypertensive-medication-angiozem---primary:
    run: antihypertensive-medication-angiozem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule218
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-hypovase---primary/output
  antihypertensive-medication-vivacor---primary:
    run: antihypertensive-medication-vivacor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule219
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-angiozem---primary/output
  antihypertensive-medication-perdix---primary:
    run: antihypertensive-medication-perdix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule220
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-vivacor---primary/output
  antihypertensive-medication-istin---primary:
    run: antihypertensive-medication-istin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule221
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-perdix---primary/output
  antihypertensive-medication-zanidip---primary:
    run: antihypertensive-medication-zanidip---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule222
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-istin---primary/output
  antihypertensive-medication-aldomet---primary:
    run: antihypertensive-medication-aldomet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule223
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-zanidip---primary/output
  antihypertensive-medication-vascace---primary:
    run: antihypertensive-medication-vascace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule224
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-aldomet---primary/output
  antihypertensive-medication-nimodipine---primary:
    run: antihypertensive-medication-nimodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule225
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-vascace---primary/output
  antihypertensive-medication-folpik---primary:
    run: antihypertensive-medication-folpik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule226
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-nimodipine---primary/output
  antihypertensive-medication-triapin---primary:
    run: antihypertensive-medication-triapin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule227
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-folpik---primary/output
  antihypertensive-medication-soloc---primary:
    run: antihypertensive-medication-soloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule228
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-triapin---primary/output
  antihypertensive-medication-amlostin---primary:
    run: antihypertensive-medication-amlostin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule229
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-soloc---primary/output
  antihypertensive-medication-parmid---primary:
    run: antihypertensive-medication-parmid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule230
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-amlostin---primary/output
  antihypertensive-medication-nifopress---primary:
    run: antihypertensive-medication-nifopress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule231
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-parmid---primary/output
  antihypertensive-medication-natrilix---primary:
    run: antihypertensive-medication-natrilix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule232
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-nifopress---primary/output
  antihypertensive-medication-capoten---primary:
    run: antihypertensive-medication-capoten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule233
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-natrilix---primary/output
  antihypertensive-medication-monocor---primary:
    run: antihypertensive-medication-monocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule234
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-capoten---primary/output
  antihypertensive-medication-frumil---primary:
    run: antihypertensive-medication-frumil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule235
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-monocor---primary/output
  antihypertensive-medication-lisopress---primary:
    run: antihypertensive-medication-lisopress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule236
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-frumil---primary/output
  antihypertensive-medication-exforge---primary:
    run: antihypertensive-medication-exforge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule237
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-lisopress---primary/output
  antihypertensive-medication-neofel---primary:
    run: antihypertensive-medication-neofel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule238
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-exforge---primary/output
  antihypertensive-medication-160mg---primary:
    run: antihypertensive-medication-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule239
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-neofel---primary/output
  antihypertensive-medication-tosilate---primary:
    run: antihypertensive-medication-tosilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule240
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-160mg---primary/output
  antihypertensive-medication-loniten---primary:
    run: antihypertensive-medication-loniten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule241
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-tosilate---primary/output
  antihypertensive-medication-olmetec---primary:
    run: antihypertensive-medication-olmetec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule242
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-loniten---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule243
      potentialCases:
        id: potentialCases
        source: antihypertensive-medication-olmetec---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
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
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
  inputModule182:
    id: inputModule182
    doc: Python implementation unit
    type: File
  inputModule183:
    id: inputModule183
    doc: Python implementation unit
    type: File
  inputModule184:
    id: inputModule184
    doc: Python implementation unit
    type: File
  inputModule185:
    id: inputModule185
    doc: Python implementation unit
    type: File
  inputModule186:
    id: inputModule186
    doc: Python implementation unit
    type: File
  inputModule187:
    id: inputModule187
    doc: Python implementation unit
    type: File
  inputModule188:
    id: inputModule188
    doc: Python implementation unit
    type: File
  inputModule189:
    id: inputModule189
    doc: Python implementation unit
    type: File
  inputModule190:
    id: inputModule190
    doc: Python implementation unit
    type: File
  inputModule191:
    id: inputModule191
    doc: Python implementation unit
    type: File
  inputModule192:
    id: inputModule192
    doc: Python implementation unit
    type: File
  inputModule193:
    id: inputModule193
    doc: Python implementation unit
    type: File
  inputModule194:
    id: inputModule194
    doc: Python implementation unit
    type: File
  inputModule195:
    id: inputModule195
    doc: Python implementation unit
    type: File
  inputModule196:
    id: inputModule196
    doc: Python implementation unit
    type: File
  inputModule197:
    id: inputModule197
    doc: Python implementation unit
    type: File
  inputModule198:
    id: inputModule198
    doc: Python implementation unit
    type: File
  inputModule199:
    id: inputModule199
    doc: Python implementation unit
    type: File
  inputModule200:
    id: inputModule200
    doc: Python implementation unit
    type: File
  inputModule201:
    id: inputModule201
    doc: Python implementation unit
    type: File
  inputModule202:
    id: inputModule202
    doc: Python implementation unit
    type: File
  inputModule203:
    id: inputModule203
    doc: Python implementation unit
    type: File
  inputModule204:
    id: inputModule204
    doc: Python implementation unit
    type: File
  inputModule205:
    id: inputModule205
    doc: Python implementation unit
    type: File
  inputModule206:
    id: inputModule206
    doc: Python implementation unit
    type: File
  inputModule207:
    id: inputModule207
    doc: Python implementation unit
    type: File
  inputModule208:
    id: inputModule208
    doc: Python implementation unit
    type: File
  inputModule209:
    id: inputModule209
    doc: Python implementation unit
    type: File
  inputModule210:
    id: inputModule210
    doc: Python implementation unit
    type: File
  inputModule211:
    id: inputModule211
    doc: Python implementation unit
    type: File
  inputModule212:
    id: inputModule212
    doc: Python implementation unit
    type: File
  inputModule213:
    id: inputModule213
    doc: Python implementation unit
    type: File
  inputModule214:
    id: inputModule214
    doc: Python implementation unit
    type: File
  inputModule215:
    id: inputModule215
    doc: Python implementation unit
    type: File
  inputModule216:
    id: inputModule216
    doc: Python implementation unit
    type: File
  inputModule217:
    id: inputModule217
    doc: Python implementation unit
    type: File
  inputModule218:
    id: inputModule218
    doc: Python implementation unit
    type: File
  inputModule219:
    id: inputModule219
    doc: Python implementation unit
    type: File
  inputModule220:
    id: inputModule220
    doc: Python implementation unit
    type: File
  inputModule221:
    id: inputModule221
    doc: Python implementation unit
    type: File
  inputModule222:
    id: inputModule222
    doc: Python implementation unit
    type: File
  inputModule223:
    id: inputModule223
    doc: Python implementation unit
    type: File
  inputModule224:
    id: inputModule224
    doc: Python implementation unit
    type: File
  inputModule225:
    id: inputModule225
    doc: Python implementation unit
    type: File
  inputModule226:
    id: inputModule226
    doc: Python implementation unit
    type: File
  inputModule227:
    id: inputModule227
    doc: Python implementation unit
    type: File
  inputModule228:
    id: inputModule228
    doc: Python implementation unit
    type: File
  inputModule229:
    id: inputModule229
    doc: Python implementation unit
    type: File
  inputModule230:
    id: inputModule230
    doc: Python implementation unit
    type: File
  inputModule231:
    id: inputModule231
    doc: Python implementation unit
    type: File
  inputModule232:
    id: inputModule232
    doc: Python implementation unit
    type: File
  inputModule233:
    id: inputModule233
    doc: Python implementation unit
    type: File
  inputModule234:
    id: inputModule234
    doc: Python implementation unit
    type: File
  inputModule235:
    id: inputModule235
    doc: Python implementation unit
    type: File
  inputModule236:
    id: inputModule236
    doc: Python implementation unit
    type: File
  inputModule237:
    id: inputModule237
    doc: Python implementation unit
    type: File
  inputModule238:
    id: inputModule238
    doc: Python implementation unit
    type: File
  inputModule239:
    id: inputModule239
    doc: Python implementation unit
    type: File
  inputModule240:
    id: inputModule240
    doc: Python implementation unit
    type: File
  inputModule241:
    id: inputModule241
    doc: Python implementation unit
    type: File
  inputModule242:
    id: inputModule242
    doc: Python implementation unit
    type: File
  inputModule243:
    id: inputModule243
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
