X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["647" "Tuesday" "1" "August" "2017" "17:27:26" "+0300" "=?koi8-r?B?4czFy9PBzsTSIO7P08HSxdc=?=" "nosarev-ay@rambler.ru" "<1501597646.744346.23695.25373@mail.rambler.ru>" "26" "[oss-security] Syslog forwarding with IP spoofing" "^Date:" nil nil "8" "2017080114:27:26" "[oss-security] Syslog forwarding with IP spoofing" (number mark "        nosarev-ay@r Aug  1   26/647   " thread-indent "\"[oss-security] Syslog forwarding with IP spoofing\"\n") "<1501597640.407871.9894.30815@mail.rambler.ru>" ("<1501597640.407871.9894.30815@mail.rambler.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28131 invoked by uid 550); 1 Aug 2017 16:55:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29941 invoked from network); 1 Aug 2017 14:27:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rambler.ru; s=mail;
	t=1501598226; bh=pWBGh6eFQNmggYU9pmNuJMwuYgj0CP66F8lJpoVw8yk=;
	h=From:To:Reply-To:Subject:Date:In-Reply-To:References;
	b=K8BrJmCKoGrCjHVrKSjNJL0Y+KVyyqN9vSLgmQF9KLrGoYy1FQ4SKkFwIHx860Tem
	 yLe2vo+RrDfF4LIr+dojeClOKSI5yqfI1MzYrEeJj17HIHvI9YxlkHCrWO/Rkpn/K1
	 sakGAatO+kf1qKQXB6qtKdzoNIHvMQBqmLgSQIaM=
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative; boundary="_----------=_15015976462369538"
In-Reply-To: <1501597640.407871.9894.30815@mail.rambler.ru>
Message-Id: <1501597646.744346.23695.25373@mail.rambler.ru>
MIME-Version: 1.0
References: <1501597640.407871.9894.30815@mail.rambler.ru>
X-Mailer: Rambler WebMail, http://mail.rambler.ru/
X-Rambler-User: nosarev-ay@rambler.ru/77.246.234.228
Date: Tue, 1 Aug 2017 17:27:26 +0300
From: =?koi8-r?B?4czFy9PBzsTSIO7P08HSxdc=?= <nosarev-ay@rambler.ru>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Syslog forwarding with IP spoofing
To: oss-security@lists.openwall.com

--_----------=_15015976462369538
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; format="flowed"

Good day!


I need to recive syslog messages, filter them and send them forward to the =
SIEM.

Also HOST field is not represented in syslog, so i need to spoof IP of forw=
arding
packets to bind messages recived by SIEM to it's original source IP.

If i will try to add some marks to syslog message, I will need to override
parsers for each syslog source type, so it seems like abad idea.

Is there any open source tool for that task?


--

=2E

--_----------=_15015976462369538--
