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


(defrule Menu 
        (not (iffoundChoice ?)) =>
                (printout t crlf ?*QG01* crlf crlf ?*ask*  )
                (assert (G01 (read)))
        )

        ;;------------------G01Y-G02
        (defrule G01_YES
                (G01 yes) ?retractChy <- (G01 yes)
                (not (G02 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*QG02* crlf crlf ?*ask* )
                (assert (G02 (read)))
        )

        (defrule G01_NO       
                (G01 no)
                (not (G02 ?)) =>
                (printout t crlf crlf crlf ?*QG02* crlf crlf ?*ask*  )
                (assert (G02 (read)))
        )


        ;;------------------G02Y-G03
        (defrule G02_YES
                (G02 yes) ?retractChy <- (G02 yes)
                (not (G03 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*QG03* crlf crlf ?*ask* )
                (assert (G03 (read)))
        )


        ;;------------------G02N->G03
        (defrule G02_NO
                (G02 no) ?retractChy <- (G02 no)
                (not(G03))=>
                (retract ?retractChy)
                (printout t crlf crlf crlf  ?*QG03* crlf crlf ?*ask* )
                (assert (G03 (read)))
        )


        ;;------------------G03Y-G04
        (defrule G03_YES
                (G03 yes) ?retractChy <- (G03 yes)
                (not (G04 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*QG04* crlf crlf ?*ask* )
                (assert (G04 (read)))
        )


         ;;------------------G03N-G04
        (defrule G03_NO
                (G03 no) ?retractChy <- (G03 no)
                (not (G04 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*QG04* crlf crlf ?*ask* )
                (assert (G04 (read)))
        )

         ;;------------------G04Y-G05
        (defrule G04_YES
                (G04 yes) ?retractChy <- (G04 yes)
                (not (G05 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*QG05* crlf crlf ?*ask* )
                (assert (G05 (read)))
        )
        

         ;;------------------G04N-G05
        (defrule G04_NO
                (G04 no) ?retractChy <- (G04 no)
                (not (G05 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*QG05* crlf crlf ?*ask* )
                (assert (G05 (read)))
        )

          ;;------------------G05Y-G0P1
        (defrule G05_YES
                (G05 yes) ?retractChy <- (G05 yes)
                 =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*P1* crlf crlf ?*thk* )
        )

        (defrule G05_NO
                (G05 no) ?retractChy <- (G05 no)
                (not (G06 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*QG06* crlf crlf ?*ask* )
                (assert (G06 (read)))
        )

          ;;------------------G06Y-G07
         (defrule G06_YES
                (G06 yes) ?retractChy <- (G06 yes)
                (not (G07 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*QG07* crlf crlf ?*ask* )
                (assert (G07 (read)))
        )

        (defrule G06_NO
                (G06 no) ?retractChy <- (G06 no)
                (not (G07 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*QG07* crlf crlf ?*ask* )
                (assert (G07 (read)))
        )

          ;;------------------G07Y-G08
         (defrule G07_YES
                (G07 yes) ?retractChy <- (G07 yes)
                 =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*P3* crlf crlf ?*thk* )
        )

        ;;------------------G07N-G08
        (defrule G07_NO
                (G07 no) ?retractChy <- (G07 no)
                (not (G08 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*QG08* crlf crlf ?*ask* )
                (assert (G08 (read)))
        )


         ;;------------------G08Y-G09
         (defrule G08_YES
                (G08 yes) ?retractChy <- (G08 yes)
                (not (G09 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*QG09* crlf crlf ?*ask* )
                (assert (G09 (read)))
        )

         ;;------------------G08N-G09
        defrule G08_NO
                (G08 no) ?retractChy <- (G08 no)
                (not (G09 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*QG09* crlf crlf ?*ask* )
                (assert (G09 (read)))
        )


        ;;------------------G09Y-G010
         (defrule G09_YES
                (G09 yes) ?retractChy <- (G09 yes)
                 =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*P2* crlf crlf ?*thk* )
        )


        ;;------------------G05N->FINISH
        (defrule G09_NO
                (G09 no) ?retractChy <- (G09 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf ?*PEND* crlf crlf ?*thk*  )
        )