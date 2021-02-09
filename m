X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1835" "Tuesday" "9" "February" "2021" "18:11:37" "-0000" "Tavis Ormandy" "taviso@gmail.com" "<rvuj8p$n59$1@ciao.gmane.io>" "48" "[oss-security] Re: screen crash processing combining characters" "^Date:" nil nil "2" "2021020918:11:37" "[oss-security] Re: screen crash processing combining characters" (number mark "        taviso@gmail Feb  9   48/1835  " thread-indent "\"[oss-security] Re: screen crash processing combining characters\"\n") "<alpine.DEB.2.21.2102091921540.21881@o7.fi>" ("<rvubtf$lnv$1@ciao.gmane.io>" "<alpine.DEB.2.21.2102091921540.21881@o7.fi>") nil nil nil nil nil nil nil "[oss-security] Re: screen crash processing combining characters" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22128 invoked by uid 550); 9 Feb 2021 18:14:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20112 invoked from network); 9 Feb 2021 18:11:55 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <rvuj8p$n59$1@ciao.gmane.io>
References: <rvubtf$lnv$1@ciao.gmane.io>
 <alpine.DEB.2.21.2102091921540.21881@o7.fi>
User-Agent: slrn/pre1.0.4-5 (Linux)
Date: Tue, 9 Feb 2021 18:11:37 -0000 (UTC)
From: Tavis Ormandy <taviso@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: screen crash processing combining characters
To: oss-security@lists.openwall.com

On 2021-02-09, Harry Sintonen wrote:
> On Tue, 9 Feb 2021, Tavis Ormandy wrote:
>
>> Hello, I noticed someone posted this to the screen-devel list. I can
>> reproduce it here, just catting the testcase does crash my screen
>> session.
>>
>> https://lists.gnu.org/archive/html/screen-devel/2021-02/msg00000.html
>
> I managed to reproduce this against screen + irssi. It was a bit tricky to 
> get it triggered but eventually screen did die.
>

welp, I minimized it a bit and it crashed xterm too.

I minimized it to 772 characters:

$ wc -m input.txt
772 input.txt

Here is the minimized version (gzipped and base64 encoded to avoid
crashing anything anybody's mail client).

$ gzip -9c < input.txt | base64
H4sIAD7OImACA02W61IiQQyFX10WpkdZF5QFF4TVWbkoKpcZVuQyMM/iD99DTPM1p4qiTp1O0klO
OvDp3Mf3p/gsio+4ZqB9+D4ybm+gJ8y7gesTEyffwG2EiQ3ci9fGwOLERAsDffGaGYiFiQx0JE6O
TZk4SwOZePmjW/F6MZAK4yO/ideVAani2JZ/wpwZOBMvqyIuhHkyUDkyriRHXUDJjoLXOyASY+v8
3gnTImf0igriwBzb8io5Nw2MyWcoR3PA1EBZ1EkN5GJsKhdbYTpoGm7/YeBScm7S1T1MRg8HeFWs
UumhuwDcAcJkmtyuivEf8fLzox0b0I2EozLqbC3OCuMZ/dnB1CVyDHglsu/Pi9wVUu1RYELkcORn
Yy2Rn+3S/8JcERB1Ij/zN3LXFr3GMI8GErE5N9CE2RD5r9j4V6m3twBv2Pj3VZPZ2DO0QfcbA12J
7BW8E8bvjQl9Hsilv7CZACygzacxD4CUQRqJe8MAUrowCQdQZyA98yz5FGySDu5N5jDU1ebtRHhV
AHVsJlyxgumicninGVO3wX3MZI643XdM1oVL2S1hP484eiB53425ePWR2yHTBCY8qyXTkhI5533l
yH3BFvXlhL0RhOtjc9iQJfLJ2VGMsTfe70SdMOENbPz0NkQd/4iepC5qjzsw57Qu6JWRD5XGbZIP
PRwaCAukTM6J5LxArwSmxLYJHXN0w/GIlhj/BqzYkFu8PDOVugYoWGPBZjTzDuAv/SlvOeLSUPsQ
Y0bUrQ084tU7lRORz3GBzFlxGe4t8WInxGu8qsw8izGuMhJlNm1KOSHDW+6ih+7SwFK6ERK7ZoEs
sLE4Lvw92InXPerk5DNlfixDJz8K0ZxGxSg484P6Be3RyjwMCQAA

To reproduce in XTerm, decode the file then try to select the line.

I'll send a report to Thomas Dickey.

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

