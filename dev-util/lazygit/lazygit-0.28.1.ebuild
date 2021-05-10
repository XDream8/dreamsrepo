# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit go-module

EGO_SUM=(
    "github.com/OpenPeeDeeP/xdg v1.0.0 h1:UDLmNjCGFZZCaVMB74DqYEtXkHxnTxcr4FeJVF9uCn8="
	"github.com/OpenPeeDeeP/xdg v1.0.0/go.mod h1:tMoSueLQlMf0TCldjrJLNIjAc5qAOIcHt5REi88/Ygo="
	"github.com/alcortesm/tgz v0.0.0-20161220082320-9c5fe88206d7 h1:uSoVVbwJiQipAclBbw+8quDsfcvFjOpI5iCf4p/cqCs="
	"github.com/alcortesm/tgz v0.0.0-20161220082320-9c5fe88206d7/go.mod h1:6zEj6s6u/ghQa61ZWa/C2Aw3RkjiTBOix7dkqa1VLIs="
	"github.com/anmitsu/go-shlex v0.0.0-20161002113705-648efa622239 h1:kFOfPq6dUM1hTo4JG6LR5AXSUEsOjtdm0kw0FtQtMJA="
	"github.com/anmitsu/go-shlex v0.0.0-20161002113705-648efa622239/go.mod h1:2FmKhYUyUczH0OGQWaF5ceTx0UBShxjsH6f8oGKYe2c="
	"github.com/armon/go-socks5 v0.0.0-20160902184237-e75332964ef5 h1:0CwZNZbxp69SHPdPJAN/hZIm0C4OItdklCFmMRWYpio="
	"github.com/armon/go-socks5 v0.0.0-20160902184237-e75332964ef5/go.mod h1:wHh0iHkYZB8zMSxRWpUBQtwG5a7fFgvEO+odwuTv2gs="
	"github.com/atotto/clipboard v0.1.2 h1:YZCtFu5Ie8qX2VmVTBnrqLSiU9XOWwqNRmdT3gIQzbY="
	"github.com/atotto/clipboard v0.1.2/go.mod h1:ZY9tmq7sm5xIbd9bOK4onWV4S6X0u6GY7Vn0Yu86PYI="
	"github.com/aybabtme/humanlog v0.4.1 h1:D8d9um55rrthJsP8IGSHBcti9lTb/XknmDAX6Zy8tek="
	"github.com/aybabtme/humanlog v0.4.1/go.mod h1:B0bnQX4FTSU3oftPMTTPvENCy8LqixLDvYJA9TUCAGo="
	"github.com/aybabtme/rgbterm v0.0.0-20170906152045-cc83f3b3ce59/go.mod h1:q/89r3U2H7sSsE2t6Kca0lfwTK8JdoNGS/yzM/4iH5I="
	"github.com/cli/safeexec v1.0.0 h1:0VngyaIyqACHdcMNWfo6+KdUYnqEr2Sg+bSP1pdF+dI="
	"github.com/cli/safeexec v1.0.0/go.mod h1:Z/D4tTN8Vs5gXYHDCbaM1S/anmEDnJb1iW0+EJ5zx3Q="
	"github.com/cloudfoundry/jibber_jabber v0.0.0-20151120183258-bcc4c8345a21 h1:tuijfIjZyjZaHq9xDUh0tNitwXshJpbLkqMOJv4H3do="
	"github.com/cloudfoundry/jibber_jabber v0.0.0-20151120183258-bcc4c8345a21/go.mod h1:po7NpZ/QiTKzBKyrsEAxwnTamCoh8uDk/egRpQ7siIc="
	"github.com/creack/pty v1.1.9/go.mod h1:oKZEueFk5CKHvIhNR5MUki03XCEU+Q6VDXinZuGJ33E="
	"github.com/creack/pty v1.1.11 h1:07n33Z8lZxZ2qwegKbObQohDhXDQxiMMz1NOUGYlesw="
	"github.com/creack/pty v1.1.11/go.mod h1:oKZEueFk5CKHvIhNR5MUki03XCEU+Q6VDXinZuGJ33E="
	"github.com/davecgh/go-spew v1.1.0/go.mod h1:J7Y8YcW2NihsgmVo/mv3lAwl/skON4iLHjSsI+c5H38="
	"github.com/davecgh/go-spew v1.1.1 h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c="
	"github.com/davecgh/go-spew v1.1.1/go.mod h1:J7Y8YcW2NihsgmVo/mv3lAwl/skON4iLHjSsI+c5H38="
	"github.com/emirpasic/gods v1.12.0 h1:QAUIPSaCu4G+POclxeqb3F+WPpdKqFGlw36+yOzGlrg="
	"github.com/emirpasic/gods v1.12.0/go.mod h1:YfzfFFoVP/catgzJb4IKIqXjX78Ha8FMSDh3ymbK86o="
	"github.com/fatih/color v1.7.1-0.20180516100307-2d684516a886 h1:NAFoy+QgUpERgK3y1xiVh5HcOvSeZHpXTTo5qnvnuK4="
	"github.com/fatih/color v1.7.1-0.20180516100307-2d684516a886/go.mod h1:Zm6kSWBoL9eyXnKyktHP6abPY2pDugNf5KwzbycvMj4="
	"github.com/fatih/color v1.9.0 h1:8xPHl4/q1VyqGIPif1F+1V3Y3lSmrq01EabUW3CoW5s="
	"github.com/fatih/color v1.9.0/go.mod h1:eQcE1qtQxscV5RaZvpXrrb8Drkc3/DdQ+uUYCNjL+zU="
	"github.com/flynn/go-shlex v0.0.0-20150515145356-3f9db97f8568 h1:BHsljHzVlRcyQhjrss6TZTdY2VfCqZPbv5k3iBFa2ZQ="
	"github.com/flynn/go-shlex v0.0.0-20150515145356-3f9db97f8568/go.mod h1:xEzjJPgXI435gkrCt3MPfRiAkVrwSbHsst4LCFVfpJc="
	"github.com/fsnotify/fsnotify v1.4.7 h1:IXs+QLmnXW2CcXuY+8Mzv/fWEsPGWxqefPtCP5CnV9I="
	"github.com/fsnotify/fsnotify v1.4.7/go.mod h1:jwhsz4b93w/PPRr/qN1Yymfu8t87LnFCMoQvtojpjFo="
	"github.com/gdamore/encoding v1.0.0 h1:+7OoQ1Bc6eTm5niUzBa0Ctsh6JbMW6Ra+YNuAtDBdko="
	"github.com/gdamore/encoding v1.0.0/go.mod h1:alR0ol34c49FCSBLjhosxzcPHQbf2trDkoo5dl+VrEg="
	"github.com/gdamore/tcell/v2 v2.0.0 h1:GRWG8aLfWAlekj9Q6W29bVvkHENc6hp79XOqG4AWDOs="
	"github.com/gdamore/tcell/v2 v2.0.0/go.mod h1:vSVL/GV5mCSlPC6thFP5kfOFdM9MGZcalipmpTxTgQA="
	"github.com/gdamore/tcell/v2 v2.1.0 h1:UnSmozHgBkQi2PGsFr+rpdXuAPRRucMegpQp3Z3kDro="
	"github.com/gdamore/tcell/v2 v2.1.0/go.mod h1:vSVL/GV5mCSlPC6thFP5kfOFdM9MGZcalipmpTxTgQA="
	"github.com/gdamore/tcell/v2 v2.2.0 h1:vSyEgKwraXPSOkvCk7IwOSyX+Pv3V2cV9CikJMXg4U4="
	"github.com/gdamore/tcell/v2 v2.2.0/go.mod h1:cTTuF84Dlj/RqmaCIV5p4w8uG1zWdk0SF6oBpwHp4fU="
	"github.com/gliderlabs/ssh v0.2.2 h1:6zsha5zo/TWhRhwqCD3+EarCAgZ2yN28ipRnGPnwkI0="
	"github.com/gliderlabs/ssh v0.2.2/go.mod h1:U7qILu1NlMHj9FlMhZLlkCdDnU1DBEAqr0aevW3Awn0="
	"github.com/go-errors/errors v1.0.2/go.mod h1:psDX2osz5VnTOnFWbDeWwS7yejl+uV3FEWEp4lssFEs="
	"github.com/go-errors/errors v1.1.1 h1:ljK/pL5ltg3qoN+OtN6yCv9HWSfMwxSx90GJCZQxYNg="
	"github.com/go-errors/errors v1.1.1/go.mod h1:psDX2osz5VnTOnFWbDeWwS7yejl+uV3FEWEp4lssFEs="
	"github.com/go-git/gcfg v1.5.0 h1:Q5ViNfGF8zFgyJWPqYwA7qGFoMTEiBmdlkcfRmpIMa4="
	"github.com/go-git/gcfg v1.5.0/go.mod h1:5m20vg6GwYabIxaOonVkTdrILxQMpEShl1xiMF4ua+E="
	"github.com/go-git/go-billy/v5 v5.0.0 h1:7NQHvd9FVid8VL4qVUMm8XifBK+2xCoZ2lSk0agRrHM="
	"github.com/go-git/go-billy/v5 v5.0.0/go.mod h1:pmpqyWchKfYfrkb/UVH4otLvyi/5gJlGI4Hb3ZqZ3W0="
	"github.com/go-git/go-git-fixtures/v4 v4.0.2-0.20200613231340-f56387b50c12 h1:PbKy9zOy4aAKrJ5pibIRpVO2BXnK1Tlcg+caKI7Ox5M="
	"github.com/go-git/go-git-fixtures/v4 v4.0.2-0.20200613231340-f56387b50c12/go.mod h1:m+ICp2rF3jDhFgEZ/8yziagdT1C+ZpZcrJjappBCDSw="
	"github.com/go-logfmt/logfmt v0.4.0 h1:MP4Eh7ZCb31lleYCFuwm0oe4/YGak+5l1vA2NOE80nA="
	"github.com/go-logfmt/logfmt v0.4.0/go.mod h1:3RMwSq7FuexP4Kalkev3ejPJsZTpXXBr9+V4qmtdjCk="
	"github.com/go-logfmt/logfmt v0.5.0 h1:TrB8swr/68K7m9CcGut2g3UOihhbcbiMAYiuTXdEih4="
	"github.com/go-logfmt/logfmt v0.5.0/go.mod h1:wCYkCAKZfumFQihp8CzCvQ3paCTfi41vtzG1KdI/P7A="
	"github.com/golang-collections/collections v0.0.0-20130729185459-604e922904d3 h1:zN2lZNZRflqFyxVaTIU61KNKQ9C0055u9CAfpmqUvo4="
	"github.com/golang-collections/collections v0.0.0-20130729185459-604e922904d3/go.mod h1:nPpo7qLxd6XL3hWJG/O60sR8ZKfMCiIoNap5GvD12KU="
	"github.com/golang/protobuf v1.2.0/go.mod h1:6lQm79b+lXiMfvg/cZm0SGofjICqVBUtrP5yJMmIC1U="
	"github.com/golang/protobuf v1.3.2 h1:6nsPYzhq5kReh6QImI3k5qWzO4PEbvbIW2cwSfR/6xs="
	"github.com/golang/protobuf v1.3.2/go.mod h1:6lQm79b+lXiMfvg/cZm0SGofjICqVBUtrP5yJMmIC1U="
	"github.com/google/go-cmp v0.3.0/go.mod h1:8QqcDgzrUqlUb/G2PQTWiueGozuR1884gddMywk6iLU="
	"github.com/google/go-cmp v0.3.1 h1:Xye71clBPdm5HgqGwUkwhbynsUJZhDbS20FvLhQ2izg="
	"github.com/google/go-cmp v0.3.1/go.mod h1:8QqcDgzrUqlUb/G2PQTWiueGozuR1884gddMywk6iLU="
	"github.com/hpcloud/tail v1.0.0 h1:nfCOvKYfkgYP8hkirhJocXT2+zOD8yUNjXaWfTlyFKI="
	"github.com/hpcloud/tail v1.0.0/go.mod h1:ab1qPbhIpdTxEkNHXyeSf5vhxWSCs/tWer42PpOxQnU="
	"github.com/imdario/mergo v0.3.9 h1:UauaLniWCFHWd+Jp9oCEkTBj8VO/9DKg3PV3VCNMDIg="
	"github.com/imdario/mergo v0.3.9/go.mod h1:2EnlNZ0deacrJVfApfmtdGgDfMuh/nq6Ok1EcJh5FfA="
	"github.com/imdario/mergo v0.3.11 h1:3tnifQM4i+fbajXKBHXWEH+KvNHqojZ778UH75j3bGA="
	"github.com/imdario/mergo v0.3.11/go.mod h1:jmQim1M+e3UYxmgPu/WyfjB3N3VflVyUjjjwH0dnCYA="
	"github.com/integrii/flaggy v1.4.0 h1:A1x7SYx4jqu5NSrY14z8Z+0UyX2S5ygfJJrfolWR3zM="
	"github.com/integrii/flaggy v1.4.0/go.mod h1:tnTxHeTJbah0gQ6/K0RW0J7fMUBk9MCF5blhm43LNpI="
	"github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99 h1:BQSFePA1RWJOlocH6Fxy8MmwDt+yVQYULKfN0RoTN8A="
	"github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99/go.mod h1:1lJo3i6rXxKeerYnT8Nvf0QmHCRC1n8sfWVwXF2Frvo="
	"github.com/jesseduffield/go-git/v5 v5.1.2-0.20201006095850-341962be15a4 h1:GOQrmaE8i+KEdB8NzAegKYd4tPn/inM0I1uo0NXFerg="
	"github.com/jesseduffield/go-git/v5 v5.1.2-0.20201006095850-341962be15a4/go.mod h1:nGNEErzf+NRznT+N2SWqmHnDnF9aLgANB1CUNEan09o="
	"github.com/jesseduffield/gocui v0.3.1-0.20161105104656-d666c9f652af h1:9ZI/QyVOerYYeqMt4svycU2Lz0WvxNHCpHHbsFsi/oA="
	"github.com/jesseduffield/gocui v0.3.1-0.20161105104656-d666c9f652af/go.mod h1:2RtZznzYKt8RLRwvFiSkXjU0Ei8WwHdubgnlaYH47dw="
	"github.com/jesseduffield/gocui v0.3.1-0.20201010224802-8a6768078fd7 h1:K3MGrjmpPtIhfXmKh/zsIF0CdmNKOkjpIwcUfAa/J2A="
	"github.com/jesseduffield/gocui v0.3.1-0.20201010224802-8a6768078fd7/go.mod h1:2RtZznzYKt8RLRwvFiSkXjU0Ei8WwHdubgnlaYH47dw="
	"github.com/jesseduffield/gocui v0.3.1-0.20201224041937-f5a9733d1860 h1:1xfQM6T5A4jqcVvUnYaKR6bGrOhDLWQsp79JFNJpzcQ="
	"github.com/jesseduffield/gocui v0.3.1-0.20201224041937-f5a9733d1860/go.mod h1:9LmtJcK+Kwiuc2huslzS37uFJPdHka2Cs/cQ06JZdbk="
	"github.com/jesseduffield/gocui v0.3.1-0.20210208224444-2eecee85583d h1:Jto9W9w8CFwZiAYXa7LsHDEOb5cKCA1f5LOL1A3jva4="
	"github.com/jesseduffield/gocui v0.3.1-0.20210208224444-2eecee85583d/go.mod h1:2RtZznzYKt8RLRwvFiSkXjU0Ei8WwHdubgnlaYH47dw="
	"github.com/jesseduffield/gocui v0.3.1-0.20210329125022-96b1d3106429 h1:Ih3UVczKRabZnQ7RisGi5uItC2QJxdqgef7AClJ2G9A="
	"github.com/jesseduffield/gocui v0.3.1-0.20210329125022-96b1d3106429/go.mod h1:2RtZznzYKt8RLRwvFiSkXjU0Ei8WwHdubgnlaYH47dw="
	"github.com/jesseduffield/gocui v0.3.1-0.20210329125502-e830abf4b73a h1:RVYf2MA/RJbodE+S0e2z++JmB9A7hD1lUsI0euv1fmA="
	"github.com/jesseduffield/gocui v0.3.1-0.20210329125502-e830abf4b73a/go.mod h1:2RtZznzYKt8RLRwvFiSkXjU0Ei8WwHdubgnlaYH47dw="
	"github.com/jesseduffield/gocui v0.3.1-0.20210329130738-e026850021e3 h1:UDiArPlzkg+8mmNjhUOamQoyiTSzQUGIpOsu5hCRJVI="
	"github.com/jesseduffield/gocui v0.3.1-0.20210329130738-e026850021e3/go.mod h1:2RtZznzYKt8RLRwvFiSkXjU0Ei8WwHdubgnlaYH47dw="
	"github.com/jesseduffield/gocui v0.3.1-0.20210329131148-bcc4dcd991ff h1:fTt3EzLtpsc7OA7A6Vd6JVnlxvcAy7cY9lmN9yzDwSs="
	"github.com/jesseduffield/gocui v0.3.1-0.20210329131148-bcc4dcd991ff/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
	"github.com/jesseduffield/gocui v0.3.1-0.20210402033412-1238f910f001 h1:1WH+lTSK5YMr8emISHPA+VqYDDcLei6djuSxBCLIaiI="
	"github.com/jesseduffield/gocui v0.3.1-0.20210402033412-1238f910f001/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
	"github.com/jesseduffield/gocui v0.3.1-0.20210402040718-77a1b9631715 h1:nELTdFJiZk3vv7j8nWoHvl7H2IqTr26EHKl6LaorRA8="
	"github.com/jesseduffield/gocui v0.3.1-0.20210402040718-77a1b9631715/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
	"github.com/jesseduffield/gocui v0.3.1-0.20210402113210-6fd7ef27ce76 h1:miXVlortFNTlOX+KiKW3cVxOR6+Uhl4pnQRei2X26Y4="
    "github.com/jesseduffield/gocui v0.3.1-0.20210402113210-6fd7ef27ce76/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/gocui v0.3.1-0.20210403045716-a3be78c4ccf6 h1:nENhj0TKu+11RrPm9Ls5YtzkpbNHM0faXr9UECDhODQ="
    "github.com/jesseduffield/gocui v0.3.1-0.20210403045716-a3be78c4ccf6/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/gocui v0.3.1-0.20210405041826-439abd8b6e07 h1:BymGR28auSeuW0QELl0JomK0iFLPS/WRjFlc1iGZiOQ="
    "github.com/jesseduffield/gocui v0.3.1-0.20210405041826-439abd8b6e07/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/gocui v0.3.1-0.20210405093708-e79dab8f7772 h1:dg9krj10Udac4IcvlVCOAPktQkfggkgtqRmbDKk7Pzw="
    "github.com/jesseduffield/gocui v0.3.1-0.20210405093708-e79dab8f7772/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/gocui v0.3.1-0.20210406065811-95ef6e13779b h1:3+4+muhhikpls5FePXSRNFgcdoPx8dTdqaCy3AqLz98="
    "github.com/jesseduffield/gocui v0.3.1-0.20210406065811-95ef6e13779b/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/gocui v0.3.1-0.20210406065942-1b0c68414064 h1:Oe+QJuUIOd2TU+A3BW5sT1eXqceoBcOOfyoHlGf7F8Y="
    "github.com/jesseduffield/gocui v0.3.1-0.20210406065942-1b0c68414064/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/gocui v0.3.1-0.20210409121040-210802112d8a h1:ocrSuZxQIgWWt27b+rjiyIIPz6fzfFeoL5Q4cpa2cAo="
    "github.com/jesseduffield/gocui v0.3.1-0.20210409121040-210802112d8a/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/gocui v0.3.1-0.20210410011117-a2bb4baca390 h1:Es72JiUjt01TtvqCugdvOR91baB3DhuWF1DNuxA0frA="
    "github.com/jesseduffield/gocui v0.3.1-0.20210410011117-a2bb4baca390/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/gocui v0.3.1-0.20210412111008-6ef019af3724 h1:U70Do3/OSw5n/oLJGPWsQHnos2p0yq8yAeD2muioJhQ="
    "github.com/jesseduffield/gocui v0.3.1-0.20210412111008-6ef019af3724/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/gocui v0.3.1-0.20210412113212-ee65bd542c08 h1:d003y2GByfR3PqN/JvxNuqyo8vx4m0epwY2hW7sNU80="
    "github.com/jesseduffield/gocui v0.3.1-0.20210412113212-ee65bd542c08/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/gocui v0.3.1-0.20210412130453-de7bb5079f9f h1:JPpHlvSrKNxro+K9rM3nEHCdZ16qD0hnEedHPF07OtA="
    "github.com/jesseduffield/gocui v0.3.1-0.20210412130453-de7bb5079f9f/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/gocui v0.3.1-0.20210417105214-bdf37de5c917 h1:H4THGOdAJf61wByuq8EHF/NAgtqrTxpSIPsrCXU9HAY="
    "github.com/jesseduffield/gocui v0.3.1-0.20210417105214-bdf37de5c917/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/gocui v0.3.1-0.20210417110745-37f79434200d h1:2BPcc19W0j576hvhxtKma4jcD/+qAYvw1ln2HcIEZGU="
    "github.com/jesseduffield/gocui v0.3.1-0.20210417110745-37f79434200d/go.mod h1:QWq79xplEoyhQO+dgpk3sojjTVRKjQklyTlzm5nC5Kg="
    "github.com/jesseduffield/termbox-go v0.0.0-20200823212418-a2289ed6aafe h1:qsVhCf2RFyyKIUe/+gJblbCpXMUki9rZrHuEctg6M/E="
    "github.com/jesseduffield/termbox-go v0.0.0-20200823212418-a2289ed6aafe/go.mod h1:anMibpZtqNxjDbxrcDEAwSdaJ37vyUeM1f/M4uekib4="
    "github.com/jesseduffield/yaml v2.1.0+incompatible h1:HWQJ1gIv2zHKbDYNp0Jwjlj24K8aqpFHnMCynY1EpmE="
    "github.com/jesseduffield/yaml v2.1.0+incompatible/go.mod h1:w0xGhOSIJCGYYW+hnFPTutCy5aACpkcwbmORt5axGqk="
    "github.com/jessevdk/go-flags v1.4.0/go.mod h1:4FA24M0QyGHXBuZZK/XkWh8h0e1EYbRYJSGM75WSRxI="
    "github.com/kardianos/osext v0.0.0-20190222173326-2bc1f35cddc0 h1:iQTw/8FWTuc7uiaSepXwyf3o52HaUYcV+Tu66S3F5GA="
    "github.com/kardianos/osext v0.0.0-20190222173326-2bc1f35cddc0/go.mod h1:1NbS8ALrpOvjt0rHPNLyCIeMtbizbir8U//inJ+zuB8="
    "github.com/kevinburke/ssh_config v0.0.0-20190725054713-01f96b0aa0cd h1:Coekwdh0v2wtGp9Gmz1Ze3eVRAWJMLokvN3QjdzCHLY="
    "github.com/kevinburke/ssh_config v0.0.0-20190725054713-01f96b0aa0cd/go.mod h1:CT57kijsi8u/K/BOFA39wgDQJ9CxiF4nAY/ojJ6r6mM="
    "github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod h1:T0+1ngSBFLxvqU3pZ+m/2kptfBszLMUkC4ZK/EgS/cQ="
    "github.com/konsorten/go-windows-terminal-sequences v1.0.2 h1:DB17ag19krx9CFsz4o3enTrPXyIXCl+2iCXH/aMAp9s="
    "github.com/konsorten/go-windows-terminal-sequences v1.0.2/go.mod h1:T0+1ngSBFLxvqU3pZ+m/2kptfBszLMUkC4ZK/EgS/cQ="
    "github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515 h1:T+h1c/A9Gawja4Y9mFVWj2vyii2bbUNDw3kt9VxK2EY="
    "github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515/go.mod h1:+0opPa2QZZtGFBFZlji/RkVcI2GknAs/DXo4wKdlNEc="
    "github.com/kr/pretty v0.1.0 h1:L/CwN0zerZDmRFUapSPitk6f+Q3+0za1rQkzVuMiMFI="
    "github.com/kr/pretty v0.1.0/go.mod h1:dAy3ld7l9f0ibDNOQOHHMYYIIbhfbHSm3C4ZsoJORNo="
    "github.com/kr/pty v1.1.1/go.mod h1:pFQYn66WHrOpPYNljwOMqo10TkYh1fy3cYio2l3bCsQ="
    "github.com/kr/text v0.1.0 h1:45sCR5RtlFHMR4UwH9sdQ5TC8v0qDQCHnXt+kaKSTVE="
    "github.com/kr/text v0.1.0/go.mod h1:4Jbv+DJW3UT/LiOwJeYQe1efqtUx/iVham/4vfdArNI="
    "github.com/kr/text v0.2.0 h1:5Nx0Ya0ZqY2ygV366QzturHI13Jq95ApcVaJBhpS+AY="
    "github.com/kr/text v0.2.0/go.mod h1:eLer722TekiGuMkidMxC/pM04lWEeraHUUmBw8l2grE="
    "github.com/kylelemons/godebug v1.1.0 h1:RPNrshWIDI6G2gRW9EHilWtl7Z6Sb1BR0xunSBf0SNc="
    "github.com/kylelemons/godebug v1.1.0/go.mod h1:9/0rRGxNHcop5bhtWyNeEfOS8JIWk580+fNqagV/RAw="
    "github.com/lucasb-eyer/go-colorful v1.0.3 h1:QIbQXiugsb+q10B+MI+7DI1oQLdmnep86tWFlaaUAac="
    "github.com/lucasb-eyer/go-colorful v1.0.3/go.mod h1:R4dSotOR9KMtayYi1e77YzuveK+i7ruzyGqttikkLy0="
    "github.com/lucasb-eyer/go-colorful v1.2.0 h1:1nnpGOrhyZZuNyfu1QjKiUICQ74+3FNCN69Aj6K7nkY="
    "github.com/lucasb-eyer/go-colorful v1.2.0/go.mod h1:R4dSotOR9KMtayYi1e77YzuveK+i7ruzyGqttikkLy0="
    "github.com/mattn/go-colorable v0.1.0/go.mod h1:9vuHe8Xs5qXnSaW/c/ABM9alt+Vo+STaOChaDxuIBZU="
    "github.com/mattn/go-colorable v0.1.4 h1:snbPLB8fVfU9iwbbo30TPtbLRzwWu6aJS6Xh4eaaviA="
    "github.com/mattn/go-colorable v0.1.4/go.mod h1:U0ppj6V5qS13XJ6of8GYAs25YV2eR4EVcfRqFIhoBtE="
    "github.com/mattn/go-colorable v0.1.7 h1:bQGKb3vps/j0E9GfJQ03JyhRuxsvdAanXlT9BTw3mdw="
    "github.com/mattn/go-colorable v0.1.7/go.mod h1:u6P/XSegPjTcexA+o6vUJrdnUu04hMope9wVRipJSqc="
    "github.com/mattn/go-isatty v0.0.4/go.mod h1:M+lRXTBqGeGNdLjl/ufCoiOlB5xdOkqRJdNxMWT7Zi4="
    "github.com/mattn/go-isatty v0.0.8/go.mod h1:Iq45c/XA43vh69/j3iqttzPXn0bhXyGjM0Hdxcsrc5s="
    "github.com/mattn/go-isatty v0.0.11 h1:FxPOTFNqGkuDUGi3H/qkUbQO4ZiBa2brKq5r0l8TGeM="
    "github.com/mattn/go-isatty v0.0.11/go.mod h1:PhnuNfih5lzO57/f3n+odYbM4JtupLOxQOAqxQCu2WE="
    "github.com/mattn/go-isatty v0.0.12 h1:wuysRhFDzyxgEmMf5xjvJ2M9dZoWAXNNr5LSBS7uHXY="
    "github.com/mattn/go-isatty v0.0.12/go.mod h1:cbi8OIDigv2wuxKPP5vlRcQ1OAZbq2CE4Kysco4FUpU="
    "github.com/mattn/go-runewidth v0.0.7/go.mod h1:H031xJmbD/WCDINGzjvQ9THkh0rPKHF+m2gUSrubnMI="
    "github.com/mattn/go-runewidth v0.0.9 h1:Lm995f3rfxdpd6TSmuVCHVb/QhupuXlYr8sCI/QdE+0="
    "github.com/mattn/go-runewidth v0.0.9/go.mod h1:H031xJmbD/WCDINGzjvQ9THkh0rPKHF+m2gUSrubnMI="
    "github.com/mattn/go-runewidth v0.0.10 h1:CoZ3S2P7pvtP45xOtBw+/mDL2z0RKI576gSkzRRpdGg="
    "github.com/mattn/go-runewidth v0.0.10/go.mod h1:RAqKPSqVFrSLVXbA8x7dzmKdmGzieGRCM46jaSJTDAk="
    "github.com/mattn/go-runewidth v0.0.12 h1:Y41i/hVW3Pgwr8gV+J23B9YEY0zxjptBuCWEaxmAOow="
    "github.com/mattn/go-runewidth v0.0.12/go.mod h1:RAqKPSqVFrSLVXbA8x7dzmKdmGzieGRCM46jaSJTDAk="
    "github.com/mgutz/str v1.2.0 h1:4IzWSdIz9qPQWLfKZ0rJcV0jcUDpxvP4JVZ4GXQyvSw="
    "github.com/mgutz/str v1.2.0/go.mod h1:w1v0ofgLaJdoD0HpQ3fycxKD1WtxpjSo151pK/31q6w="
    "github.com/mitchellh/go-homedir v1.1.0 h1:lukF9ziXFxDFPkA1vsr5zpc1XuPDn/wFntq5mG+4E0Y="
    "github.com/mitchellh/go-homedir v1.1.0/go.mod h1:SfyaCUpYCn1Vlf4IUYiD9fPX4A5wJrkLzIz1N1q0pr0="
    "github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e h1:fD57ERR4JtEqsWbfPhv4DMiApHyliiK5xCTNVSPiaAs="
    "github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e/go.mod h1:zD1mROLANZcx1PVRCS0qkT7pwLkGfwJo4zjcN/Tysno="
    "github.com/onsi/ginkgo v1.6.0/go.mod h1:lLunBs/Ym6LB5Z9jYTR76FiuTmxDTDusOGeTQH+WWjE="
    "github.com/onsi/ginkgo v1.10.3 h1:OoxbjfXVZyod1fmWYhI7SEyaD8B00ynP3T+D5GiyHOY="
    "github.com/onsi/ginkgo v1.10.3/go.mod h1:lLunBs/Ym6LB5Z9jYTR76FiuTmxDTDusOGeTQH+WWjE="
    "github.com/onsi/gomega v1.7.1 h1:K0jcRCwNQM3vFGh1ppMtDh/+7ApJrjldlX8fA0jDTLQ="
    "github.com/onsi/gomega v1.7.1/go.mod h1:XdKZgCCFLUoM/7CFJVPcG8C1xQ1AJ0vpAezJrB7JYyY="
    "github.com/pkg/errors v0.8.1 h1:iURUrRGxPUNPdy5/HRSm+Yj6okJ6UtLINN0Q9M4+h3I="
    "github.com/pkg/errors v0.8.1/go.mod h1:bwawxfHBFNV+L2hUp1rHADufV3IMtnDRdf1r5NINEl0="
    "github.com/pmezard/go-difflib v1.0.0 h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM="
    "github.com/pmezard/go-difflib v1.0.0/go.mod h1:iKH77koFhYxTK1pcRnkKkqfTogsbg7gZNVY4sRDYZ/4="
    "github.com/rivo/uniseg v0.1.0 h1:+2KBaVoUmb9XzDsrx/Ct0W/EYOSFf/nWTauy++DprtY="
    "github.com/rivo/uniseg v0.1.0/go.mod h1:J6wj4VEh+S6ZtnVlnTBMWIodfgj8LQOQFoIToxlJtxc="
    "github.com/rivo/uniseg v0.2.0 h1:S1pD9weZBuJdFmowNwbpi7BJ8TNftyUImj/0WQi72jY="
    "github.com/rivo/uniseg v0.2.0/go.mod h1:J6wj4VEh+S6ZtnVlnTBMWIodfgj8LQOQFoIToxlJtxc="
    "github.com/sahilm/fuzzy v0.1.0 h1:FzWGaw2Opqyu+794ZQ9SYifWv2EIXpwP4q8dY1kDAwI="
    "github.com/sahilm/fuzzy v0.1.0/go.mod h1:VFvziUEIMCrT6A6tw2RFIXPXXmzXbOsSHF0DOI8ZK9Y="
    "github.com/sergi/go-diff v1.1.0 h1:we8PVUC3FE2uYfodKH/nBHMSetSfHDR6scGdBi+erh0="
    "github.com/sergi/go-diff v1.1.0/go.mod h1:STckp+ISIX8hZLjrqAeVduY0gWCT9IjLuqbuNXdaHfM="
    "github.com/sirupsen/logrus v1.4.2 h1:SPIRibHv4MatM3XXNO2BJeFLZwZ2LvZgfQ5+UNI2im4="
    "github.com/sirupsen/logrus v1.4.2/go.mod h1:tLMulIdttU9McNUspp0xgXVQah82FyeX6MwdIuYE2rE="
    "github.com/spkg/bom v0.0.0-20160624110644-59b7046e48ad h1:fiWzISvDn0Csy5H0iwgAuJGQTUpVfEMJJd4nRFXogbc="
    "github.com/spkg/bom v0.0.0-20160624110644-59b7046e48ad/go.mod h1:qLr4V1qq6nMqFKkMo8ZTx3f+BZEkzsRUY10Xsm2mwU0="
    "github.com/stretchr/objx v0.1.0/go.mod h1:HFkY916IF+rwdDfMAkV7OtwuqBVzrE8GR6GFx+wExME="
    "github.com/stretchr/objx v0.1.1 h1:2vfRuCMp5sSVIDSqO8oNnWJq7mPa6KVP3iPIwFBuy8A="
    "github.com/stretchr/objx v0.1.1/go.mod h1:HFkY916IF+rwdDfMAkV7OtwuqBVzrE8GR6GFx+wExME="
    "github.com/stretchr/testify v1.2.2/go.mod h1:a8OnRcib4nhh0OaRAV+Yts87kKdq0PP7pXfy6kDkUVs="
    "github.com/stretchr/testify v1.4.0 h1:2E4SXV/wtOkTonXsotYi4li6zVWxYlZuYNCXe9XRJyk="
    "github.com/stretchr/testify v1.4.0/go.mod h1:j7eGeouHqKxXV5pUuKE4zz7dFj8WfuZ+81PSLYec5m4="
    "github.com/urfave/cli v1.20.1-0.20180226030253-8e01ec4cd3e2/go.mod h1:70zkFmudgCuE/ngEzBv17Jvp/497gISqfk5gWijbERA="
    "github.com/xanzy/ssh-agent v0.2.1 h1:TCbipTQL2JiiCprBWx9frJ2eJlCYT00NmctrHxVAr70="
    "github.com/xanzy/ssh-agent v0.2.1/go.mod h1:mLlQY/MoOhWBj+gOGMQkOeiEvkx+8pJSI+0Bx9h2kr4="
    "golang.org/x/crypto v0.0.0-20190219172222-a4c6cb3142f2/go.mod h1:6SG95UA2DQfeDnfUPMdvaQW0Q7yPrPDi9nlGo2tz2b4="
    "golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod h1:djNgcEr1/C05ACkg1iLfiJU5Ep61QUkGW8qpdssI0+w="
    "golang.org/x/crypto v0.0.0-20200302210943-78000ba7a073 h1:xMPOj6Pz6UipU1wXLkrtqpHbR0AVFnyPEQq/wRWz9lM="
    "golang.org/x/crypto v0.0.0-20200302210943-78000ba7a073/go.mod h1:LzIPMQfyMNhhGPhUkYOs5KpL4U8rLKemX1yGLhDgUto="
    "golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod h1:LzIPMQfyMNhhGPhUkYOs5KpL4U8rLKemX1yGLhDgUto="
    "golang.org/x/crypto v0.0.0-20201002170205-7f63de1d35b0 h1:hb9wdF1z5waM+dSIICn1l0DkLVDT3hqhhQsDNUmHPRE="
    "golang.org/x/crypto v0.0.0-20201002170205-7f63de1d35b0/go.mod h1:LzIPMQfyMNhhGPhUkYOs5KpL4U8rLKemX1yGLhDgUto="
    "golang.org/x/net v0.0.0-20180906233101-161cd47e91fd/go.mod h1:mL1N/T3taQHkDXs73rZJwtUhF3w3ftmwwsq0BUmARs4="
    "golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod h1:t9HGtf8HONx5eT2rtn7q6eTqICYqUVnKs3thJo3Qplg="
    "golang.org/x/net v0.0.0-20200301022130-244492dfa37a h1:GuSPYbZzB5/dcLNCwLQLsg3obCJtX9IJhpXkvY7kzk0="
    "golang.org/x/net v0.0.0-20200301022130-244492dfa37a/go.mod h1:z5CRVTTTmAJ677TzLLGU+0bjPO0LkuOLi4/5GtJWs/s="
    "golang.org/x/net v0.0.0-20201002202402-0a1ea396d57c h1:dk0ukUIHmGHqASjP0iue2261isepFCC6XRCSd1nHgDw="
    "golang.org/x/net v0.0.0-20201002202402-0a1ea396d57c/go.mod h1:iQL9McJNjoIa5mjH6nYTCTZXUN6RP+XW3eib7Ya3XcI="
    "golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod h1:RxMgew5VJxzue5/jJTE5uejpjVlOe/izrB70Jof72aM="
    "golang.org/x/sys v0.0.0-20170407050850-f3918c30c5c2/go.mod h1:STP8DvDyc/dI5b8T5hshtkjS+E42TnysNCUPdjciGhY="
    "golang.org/x/sys v0.0.0-20180909124046-d0be0721c37e/go.mod h1:STP8DvDyc/dI5b8T5hshtkjS+E42TnysNCUPdjciGhY="
    "golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod h1:STP8DvDyc/dI5b8T5hshtkjS+E42TnysNCUPdjciGhY="
    "golang.org/x/sys v0.0.0-20190221075227-b4e8571b14e0/go.mod h1:STP8DvDyc/dI5b8T5hshtkjS+E42TnysNCUPdjciGhY="
    "golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod h1:STP8DvDyc/dI5b8T5hshtkjS+E42TnysNCUPdjciGhY="
    "golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20190422165155-953cdadca894/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20190626150813-e07cf5db2756/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20200302150141-5c8b2ff67527 h1:uYVVQ9WP/Ds2ROhcaGPeIdVq0RIXVLwsHlnvJ+cT1So="
    "golang.org/x/sys v0.0.0-20200302150141-5c8b2ff67527/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20200930185726-fdedc70b468f/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20210124154548-22da62e12c0c h1:VwygUrnw9jn88c4u8GD3rZQbqrP/tgas88tPUbBxQrk="
    "golang.org/x/sys v0.0.0-20210124154548-22da62e12c0c/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20210217105451-b926d437f341 h1:2/QtM1mL37YmcsT8HaDNHDgTqqFVw+zr8UzMiBVLzYU="
    "golang.org/x/sys v0.0.0-20210217105451-b926d437f341/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20210331175145-43e1dd70ce54 h1:rF3Ohx8DRyl8h2zw9qojyLHLhrJpEMgyPOImREEryf0="
    "golang.org/x/sys v0.0.0-20210331175145-43e1dd70ce54/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20210402192133-700132347e07 h1:4k6HsQjxj6hVMsI2Vf0yKlzt5lXxZsMW1q0zaq2k8zY="
    "golang.org/x/sys v0.0.0-20210402192133-700132347e07/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20210403161142-5e06dd20ab57 h1:F5Gozwx4I1xtr/sr/8CFbb57iKi3297KFs0QDbGN60A="
    "golang.org/x/sys v0.0.0-20210403161142-5e06dd20ab57/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/sys v0.0.0-20210415045647-66c3f260301c h1:6L+uOeS3OQt/f4eFHXZcTxeZrGCuz+CLElgEBjbcTA4="
    "golang.org/x/sys v0.0.0-20210415045647-66c3f260301c/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
    "golang.org/x/term v0.0.0-20201210144234-2321bbc49cbf h1:MZ2shdL+ZM/XzY3ZGOnh4Nlpnxz5GSOhOmtHo3iPU6M="
    "golang.org/x/term v0.0.0-20201210144234-2321bbc49cbf/go.mod h1:bj7SfCRtBDWHUb9snDiAeCFNEtKQo2Wmx5Cou7ajbmo="
    "golang.org/x/term v0.0.0-20210317153231-de623e64d2a6 h1:EC6+IGYTjPpRfv9a2b/6Puw0W+hLtAhkV1tPsXhutqs="
    "golang.org/x/term v0.0.0-20210317153231-de623e64d2a6/go.mod h1:bj7SfCRtBDWHUb9snDiAeCFNEtKQo2Wmx5Cou7ajbmo="
    "golang.org/x/term v0.0.0-20210406210042-72f3dc4e9b72 h1:VqE9gduFZ4dbR7XoL77lHFp0/DyDUBKSXK7CMFkVcV0="
    "golang.org/x/term v0.0.0-20210406210042-72f3dc4e9b72/go.mod h1:bj7SfCRtBDWHUb9snDiAeCFNEtKQo2Wmx5Cou7ajbmo="
    "golang.org/x/text v0.3.0/go.mod h1:NqM8EUOU14njkJ3fqMW+pc6Ldnwhi/IjpwHt7yyuwOQ="
    "golang.org/x/text v0.3.2 h1:tW2bmiBqwgJj/UpqtC8EpXEZVYOwU0yG4iWbprSVAcs="
    "golang.org/x/text v0.3.2/go.mod h1:bEr9sfX3Q8Zfm5fL9x+3itogRgK3+ptLWKqgva+5dAk="
    "golang.org/x/text v0.3.5 h1:i6eZZ+zk0SOf0xgBpEpPD18qWcJda6q1sxt3S0kzyUQ="
    "golang.org/x/text v0.3.5/go.mod h1:5Zoc/QRtKVWzQhOtBMvqHzDpF6irO9z98xDceosuGiQ="
    "golang.org/x/text v0.3.6 h1:aRYxNxv6iGQlyVaZmk6ZgYEDa+Jg18DxebPSrd6bg1M="
    "golang.org/x/text v0.3.6/go.mod h1:5Zoc/QRtKVWzQhOtBMvqHzDpF6irO9z98xDceosuGiQ="
    "golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod h1:n7NCudcB/nEzxVGmLbDWY5pfWTLqBcC2KZ6jyYvM4mQ="
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod h1:Co6ibVJAznAaIkqp8huTwlJQCZ016jof/cbN4VW5Yz0="
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15 h1:YR8cESwS4TdDjEe65xsg0ogRM/Nc3DYOhEAlW+xobZo="
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod h1:Co6ibVJAznAaIkqp8huTwlJQCZ016jof/cbN4VW5Yz0="
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f h1:BLraFXnmrev5lT+xlilqcH8XK9/i0At2xKjWk4p6zsU="
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f/go.mod h1:Co6ibVJAznAaIkqp8huTwlJQCZ016jof/cbN4VW5Yz0="
	"gopkg.in/fsnotify.v1 v1.4.7 h1:xOHLXZwVvI9hhs+cLKq5+I5onOuwQLhQwiu63xxlHs4="
	"gopkg.in/fsnotify.v1 v1.4.7/go.mod h1:Tz8NjZHkW78fSQdbUxIjBTcgA1z1m8ZHf0WmKUhAMys="
	"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7 h1:uRGJdciOHaEIrze2W8Q3AKkepLTh2hOroT7a+7czfdQ="
	"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7/go.mod h1:dt/ZhP58zS4L8KSrWDmTeBkI65Dw0HsyUHuEVlX15mw="
	"gopkg.in/warnings.v0 v0.1.2 h1:wFXVbFY8DY5/xOe1ECiWdKCzZlxgshcYVNkBHstARME="
	"gopkg.in/warnings.v0 v0.1.2/go.mod h1:jksf8JmL6Qr/oQM2OXTHunEvvTAsrWBLb6OOjuVWRNI="
	"gopkg.in/yaml.v2 v2.2.2/go.mod h1:hI93XBmqTisBFMUTm0b8Fm+jr3Dg1NNxqwp+5A1VGuI="
	"gopkg.in/yaml.v2 v2.2.4/go.mod h1:hI93XBmqTisBFMUTm0b8Fm+jr3Dg1NNxqwp+5A1VGuI="
	"gopkg.in/yaml.v2 v2.3.0 h1:clyUAQHOM3G0M3f5vQj7LuJrETvjVot3Z5el9nffUtU="
	"gopkg.in/yaml.v2 v2.3.0/go.mod h1:hI93XBmqTisBFMUTm0b8Fm+jr3Dg1NNxqwp+5A1VGuI="
)

go-module_set_globals

DESCRIPTION="Lazygit"
HOMEPAGE="https://github.com/jesseduffield/lazygit"
SRC_URI="https://github.com/jesseduffield/${PN}/archive/refs/tags/v${PV}.tar.gz
         ${EGO_SUM_SRC_URI}"

LICENSE="AGPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	go build
}

src_install() {
	dobin ${PN}
}
