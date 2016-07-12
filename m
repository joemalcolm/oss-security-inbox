X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["953" "Tuesday" "12" "July" "2016" "14:33:54" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" "30" "[oss-security] CVE-2016-5389: linux kernel - challange ack information leak." "^Date:" nil nil "7" "2016071204:33:54" "[oss-security] CVE-2016-5389: linux kernel - challange ack information leak." (number mark "        wmealing@red Jul 12   30/953   " thread-indent "\"[oss-security] CVE-2016-5389: linux kernel - challange ack information leak.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9394 invoked by uid 550); 12 Jul 2016 04:34:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9373 invoked from network); 12 Jul 2016 04:34:06 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YVcgh6xWqG5KagbKSn8rr/Eg54bYUcbjPThV6CaA50g=;
        b=Z/AQ0pR01/6/DRI5mnYxWGaWt3a1UqSO/mLqwtm6/cIpTw+54cQNnr4qiPGWDM2I4d
         YD6ZuAtbcahhnSC+jJIyd+ViiGEhKwLsHMAv89Eo2IroCaCGsctbp5yMRfokzKeYcyCx
         /lR1YpUED8rn20z3labzDE3wOLSaKlpL9Ke78J+B6habcbUBfygAauv1HFQH0KR//FXZ
         z+P1R0wSjEBrdyMo/6qEoyu9ze6YhruDGhVg1ToDE2aFEBfYFjxYCPdIUPAU7qpvEVWI
         MC38BQgsRt6v0zeRi1yL6OM8arGV5wrvRa8doa5rwRfbJ+PU+oOqZvpJY0NhhIkbqaHS
         BfUQ==
X-Gm-Message-State: ALyK8tKTpAw5pDSPqRueLcbwPCEDe0KiABND32DRkR4H2oCW9ZhiwbjVieFcdW67wF6Ic6vuZZWX2uYb9T4pIjEi
X-Received: by 10.107.37.69 with SMTP id l66mr611211iol.117.1468298034855;
 Mon, 11 Jul 2016 21:33:54 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 12 Jul 2016 14:33:54 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-5389: linux kernel - challange ack information leak.
To: oss-security@lists.openwall.com

Gday,

Red Hat Product Security has been made aware of an important issue in
the Linux kernel's implementation of challenge ACKS as specified in
RFC 5961. An attacker which knows a connections client IP, server IP
and server port can abuse the challenge ACK mechanism
to determine the accuracy of a normally 'blind' attack on the client or server.

Successful exploitation of this flaw could allow a remote attacker to
inject or control a TCP stream contents in a connection between a
Linux device and its connected client/server.

* This does NOT mean that cryptographic information is exposed.
* This is not a Man in the Middle (MITM) attack.

This was reported to Red Hat by Yue Cao, part of the Cyber Security
Group in the University of California

Thanks,

Wade Mealing
Red Hat Product Security Team

Red Hat Bugzilla:

https://bugzilla.redhat.com/show_bug.cgi?id=1354708

Patch:

https://www.mail-archive.com/netdev@vger.kernel.org/msg118677.html
