X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["339" "Tuesday" "25" "October" "2016" "11:28:09" "-0400" "netblue30" "netblue30@yahoo.com" "<ffc1df4d-7172-c1f6-8bd7-7a26687fa625@yahoo.com>" "10" "Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape" nil nil nil "10" "2016102515:28:09" "[oss-security] CVE-2016-7545 -- SELinux sandbox escape" (number mark "U       netblue30@ya Oct 25   10/339   " thread-indent "\"Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape\"\n") "<1477380542.4640.11.camel@debian.org>" ("<20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>" "<1477380542.4640.11.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7535 invoked by uid 550); 25 Oct 2016 15:30:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3150 invoked from network); 25 Oct 2016 15:23:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1477408993; bh=t+Cv3uNaKG09Rm4zNAm5g6uI+FAkDQuKRSJuGG/+mIM=; h=Subject:To:References:Cc:From:Date:In-Reply-To:From:Subject; b=mZgA8V3R7MSOj93aMpw7fKJtB4wmu9+WESB4ngBy4ohJtYN/QmpbfTbFFm4Qf00Kkb6GXOnt+EVAja0BH7EzpBcQWzNzphozuO2YPr+tHaC32h6U1K7xi+7D7DieMwiX3zZ0IxNsctIb6IY7qNQbH1qtflLM+II6IrydXNSt3v9UErhnwcBihG7qYxIGtE6E61I6XQ2bLbSNNYww9HSIh+5LRd9J7KlxlYK6eJHu3o8pKKfHCm/BDgtJonTQREk+lMqztWfTFNv5o5c5gcAZzzCPjYWf2wYnxgjvQFkLXJw2xkfXZUkXP5VHs2e9yXPojbKZ7KCs8xZBT3wHyAOaig==
X-Yahoo-Newman-Id: 568712.37684.bm@smtp115.mail.ne1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: sijbdNAVM1mN0FFMlBaskU_tVrjVmnnPPAk2bgURzv2XxDT
 LUSp3VfX.vrMRogCCtbNODVqVxJPYE43slcsmARRzyJ2amLT5mf4F4PsjXUq
 CwQg8ltIPzFlfU69qMfDzfnQwiHrL05bmtZIpS4RTYfoUFrytYjbokCUkyj2
 JTQADb_va14LULi84SGTFcu_t6_cHrNL3U2KNp86vGuhWuxkvF.5levIDXnQ
 r4eAmdRH4nrVq8GFKTlLzoxb9WCdpa04DadmzBN4DvrzTcLSQV12FzVIaX38
 kktZwgt_aXhvPa_VnlQhTxOX6EfadWyfjgFbAmwM8imyal2S21o7Eu6VYdvR
 CouEAVx0e38EXmomBva0vNSJdwvQIQfGwZlsA8Sq.F0EwPnGVIZHd44gVksU
 c82ytjSK8s30nKoGzRCsArbh79iLN5e4jjD5tD.nCV2prNrUgch_hFurZWTi
 DciC.lIVIO.BNNdICPeZAvhpHhFECmjklXzWui0VZTE.YRWzbvBgsX2T216O
 dfWmo2C2mMhZcs4VDMXddQUcHjllJJrLz_jGbUTLxUQceZ0ytoA0v3CSFGIs
 -
X-Yahoo-SMTP: _9B.oumswBDs9iBpteZDNGiB0FJIYg--
To: Yves-Alexis Perez <corsac@debian.org>, oss-security@lists.openwall.com,
 up201407890@alunos.dcc.fc.up.pt
References: <20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>
 <1477380542.4640.11.camel@debian.org>
Cc: team@security.debian.org
From: netblue30 <netblue30@yahoo.com>
Message-ID: <ffc1df4d-7172-c1f6-8bd7-7a26687fa625@yahoo.com>
Date: Tue, 25 Oct 2016 11:28:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <1477380542.4640.11.camel@debian.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape

On 10/25/2016 03:29 AM, Yves-Alexis Perez wrote:
> The commit log reuses the CVE-2016-7545 number, but I guess a new one
> should
> be assigned since they don't share the same codebase?
>

I guess a new number should have been better from the beginning. I have
it as CVE-2016-7545 in my release notes for Firejail version 0.9.44.

Regards
