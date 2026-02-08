CodeSystem: JpPhrDocumentTypeCS
Id: jp-phrdocument-type-cs
Description: "PHR Document Type CodeSystem"
* ^url = $JpPhrDocumentTypeCS_Url
* ^title = "PHR Document Type CodeSystem"
* ^version = "0.0.1"
* ^status = #active
* ^publisher = "General Incorporated Association PHR Council"
* ^copyright = "General Incorporated Association PHR Council CC BY-ND 4.0"
* ^content = #complete
* ^caseSensitive = true
* ^experimental = true

// * ^hierarchyMeaning = #is-a

// ローカル
* #unspecified "未指定"
* #generic-pdf "PDF全般"
* #generic-image "画像全般"

// 透析情報2026年1月時点で以下の2つのバージョンが公開されていることが確認されている。

// http://loinc.org#29749-9 "Dialysis records" 透析情報標準 HL7 FHIR 記述仕様 ver.1.00 https://www.jsdt.or.jp/tools/file/download.cgi/3781/%E9%80%8F%E6%9E%90%E6%A8%99%E6%BA%96%E8%A6%8F%E6%A0%BCHL7%20FHIR%E8%A8%98%E8%BF%B0%E4%BB%95%E6%A7%98_Ver1.00.pdf

// http://loinc.org#29749-9 "Dialysis records" //透析情報標準 HL7 FHIR 記述仕様 ver.1.03 https://www.jsdt.or.jp/tools/file/download.cgi/3928/%E9%80%8F%E6%9E%90%E6%83%85%E5%A0%B1%E6%A8%99%E6%BA%96HL7%20FHIR%E8%A8%98%E8%BF%B0%E4%BB%95%E6%A7%98_Ver1.03.pdf

* #https://www.jsdt.or.jp#http://loinc.org#29749-9 "透析情報" "透析情報標準 HL7 FHIR 記述仕様に依る"

// Open mHealth

* #https://w3id.org/openmhealth/schemas/omh/body-weight-2.0.json "OMH体重記録" "Open mHealth Body weight"
* #https://w3id.org/openmhealth/schemas/omh/blood-pressure-4.0.json "OMH血圧記録" "Open mHealth Blood pressure"

//スキーマ名はドメインから合成
* #https://sagroups.ieee.org/1752/pam-subgroup#ieee-physical-activity-1.0 "IEEE歩数記録" "TODO:このスキーマ名の妥当性確認"

//スキーマ名はv3.0はドメインから合成、v4.0はschema-idから
* #https://openmhealth.org#body-temperature-3.0 "OMH体温記録" "Open mHealth Body tempature v3.0"
* #https://w3id.org/openmhealth/schemas/omh/body-temperature-4.0.json "OMH体温記録" "Open mHealth Body tempature v4.0"


//スキーマ名はドメインから合成
* #https://openmhealth.org#oxygen-saturation-2.0 "OMH酸素飽和度記録" "Open mHealth Oxygen saturation v2.0"

// マイナポータル・電子カルテ共有ネットワーク

//健診結果報告FHIR記述仕様 https://jpfhir.jp/fhir/eCheckup/igv1/ValueSet-mergedCheckup-valueSet-reportCategory.html


* #urn:oid:1.2.392.200119.6.1001#10 "特定健診情報" "健診結果報告FHIR記述仕様実装ガイド 特定健診情報"
* #urn:oid:1.2.392.200119.6.1001#41 "事業者健診" "健診結果報告FHIR記述仕様実装ガイド 事業者健診"
* #urn:oid:1.2.392.200119.6.1001#42 "自治体検診" "健診結果報告FHIR記述仕様実装ガイド 自治体検診"
* #urn:oid:1.2.392.200119.6.1001#43 "乳幼児健診" "健診結果報告FHIR記述仕様実装ガイド 乳幼児健診"
* #urn:oid:1.2.392.200119.6.1001#44 "妊婦健診" "健診結果報告FHIR記述仕様実装ガイド 妊婦健診"
* #urn:oid:1.2.392.200119.6.1001#60 "被保護者の健診情報" "健診結果報告FHIR記述仕様実装ガイド 被保護者の健診情報"
* #urn:oid:1.2.392.200119.6.1001#70 "保険者以外が行う特定健診等に相当する健診" "健診結果報告FHIR記述仕様実装ガイド 保険者以外が行う特定健診等に相当する健診"
* #urn:oid:1.2.392.200119.6.1001#80 "保険者が実施する特定健診等以外の健診" "健診結果報告FHIR記述仕様実装ガイド 保険者が実施する特定健診等以外の健診"
* #urn:oid:1.2.392.200119.6.1001#99 "そのほか" "健診結果報告FHIR記述仕様実装ガイド そのほか"


* #https://myna.go.jp#myna-prescription-202407 "調剤歴(マイナポータル)"
* #https://myna.go.jp#JAHISTC-08 "調剤歴(お薬手帳QRコード)"
* #https://myna.go.jp#myna-vaccination-202407 "予防接種歴"
