X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1238" "Sunday" "14" "August" "2016" "21:36:39" "+0200" "Sona Sarmadi" "sona.sarmadi@enea.com" "<b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>" "42" "Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak." "^Date:" nil nil "8" "2016081419:36:39" "[oss-security] CVE-2016-5696: linux kernel - challange ack information leak." (number mark "        sona.sarmadi Aug 14   42/1238  " thread-indent "\"Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak.\"\n") "<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" ("<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31871 invoked by uid 550); 14 Aug 2016 19:41:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29772 invoked from network); 14 Aug 2016 19:36:53 -0000
References: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
Message-ID: <b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [192.168.201.202]
X-Outbound-IP: 192.36.1.72
X-Env-From: sona.sarmadi@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Date: Sun, 14 Aug 2016 21:36:39 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
To: <oss-security@lists.openwall.com>

Hi all,

This vulnerability is currently only fixed in mainline kernels (4.7 &
4.8). Does anyone know if there is any work ongoing to backport this fix
to the  older versions?

Thanks
//Sona


On 2016-07-12 06:33, Wade Mealing wrote:
> Gday,
>
> Red Hat Product Security has been made aware of an important issue in
> the Linux kernel's implementation of challenge ACKS as specified in
> RFC 5961. An attacker which knows a connections client IP, server IP
> and server port can abuse the challenge ACK mechanism
> to determine the accuracy of a normally 'blind' attack on the client or server.
>
> Successful exploitation of this flaw could allow a remote attacker to
> inject or control a TCP stream contents in a connection between a
> Linux device and its connected client/server.
>
> * This does NOT mean that cryptographic information is exposed.
> * This is not a Man in the Middle (MITM) attack.
>
> This was reported to Red Hat by Yue Cao, part of the Cyber Security
> Group in the University of California
>
> Thanks,
>
> Wade Mealing
> Red Hat Product Security Team
>
> Red Hat Bugzilla:
>
> https://bugzilla.redhat.com/show_bug.cgi?id=1354708
>
> Patch:
>
> https://www.mail-archive.com/netdev@vger.kernel.org/msg118677.html

