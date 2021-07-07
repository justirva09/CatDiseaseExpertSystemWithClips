##PENYAKIT KUCING

**Tabel akuisisi pengetahuan hubungan gejala dengan penyakit kucing.**

| **No** | **id_Gejala** | **Gejala** | **Koksidiosis** | **Tripanosomiasis** | **Hepatozoonosis** |
| --- | --------- | ------ | ----------- | --------------- | -------------- |
| **1** | **G1**  | **Dehidrasi** |  |  |  |
| **2** | **G2** | **Kekurusan** |  |  |  |
| **3** | **G3** | **Malas bergerak** | **\*** | **\*** | **\*** |
| **4** | **G4** | **Anemia** | **\*** | **\*** |  |
| **5** | **G5** | **Diare** | **\*** |  |  |
| **6** | **G6** | **Demam** |  |  | **\*** |
| **7** | **G7** | **Pucat** |  |  | **\*** |
| **8** | **G8** | **Anoreksia** |  | **\*** | **\*** |
| **9** | **G9** | **Epifora** |  | **\*** |  |

```
(defglobal
        ?*ask* = " Jawaban: "
        ?*thk* = " TERIMAKASIH" 
        ?*QG01* = "Apakah kucing anda mengalami Dehidrasi ? (yes | no)" 
        ?*QG02* = "Apakah kucing anda terlihat Kekurusan ? (Yes | No) "
        ?*QG03* = "Apakah kucing Malas bergerak ? (Yes | No) "
        ?*QG04* = "Apakah kucing anda mengalami Anemia? (Yes | No) "
        ?*QG05* = "Apakah kucing anda mengalami Diare? (Yes | No) "
        ?*QG06* = "Apakah kucing anda mengalami Demam? (Yes | No) "
        ?*QG07* = "Apakah kucing anda terlihat pucat? (Yes | No) "
        ?*QG08* = "Apakah kucing anda mengalami Anoreksia? (Yes | No) "
        ?*QG09* = "Apakah kucing anda mengalami Epifora(mata berair)? (Yes | No)"

        ?*PEND* = "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI"
        ?*P1* = "KUCING ANDA TERKENA KOKSIDIOSIS" 
        ?*P2* = "KUCING ANDA TERKENA Tripanosomiasis"
        ?*P3* = "KUCING ANDA TERKENA Hepatozoonosis"
)
```