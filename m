X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["689" "Friday" "9" "December" "2016" "21:19:06" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161209201906.ltauap7fydkc62f6@eldamar.local>" "19" "[oss-security] CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" "^Date:" nil nil "12" "2016120920:19:06" "[oss-security] CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" (number mark "U       carnil@debia Dec  9   19/689   " thread-indent "\"[oss-security] CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32619 invoked by uid 550); 9 Dec 2016 20:19:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32601 invoked from network); 9 Dec 2016 20:19:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=skq/hfnm6/RSCOkOXVvwAF0PJkjfQ9aqlTFspeVEkUU=;
        b=Yn0slPsn6ElLWkNplIL+WfmCAZF+OEJbn71lDVvRxGYqnPy6LML1EeNChJW8KePY6g
         ThMitEcf1DnjHquMyczS3JMBut9+9HF5N+VZ10puYz2u/CGNYUmRrIPYidh3CrNSMyrF
         Wj7XPilowoXl5Nso+GwaGtYzlyyLtffDVMUPES6o6004gO8QYwEDDlPsskNU54Tg4yUY
         mGcMWD7ORDUSLxDKLq9kI7971YxmeQLpFNjr3pZJRIrkmYkGC/RMgRwzGXfb2xLErmtD
         dzZxDLI7rd0/6I7O4CzBH5dhcjtXzorjx7D/gs4L0C5PxMwwmn3L1e8zyfN/QOfaHnOO
         V0CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=skq/hfnm6/RSCOkOXVvwAF0PJkjfQ9aqlTFspeVEkUU=;
        b=f5wB/194DUGBPiA6umFzl+CJbBhaQOvoQuk8RX32Seyp4oTh4W39DsWCbIcq3zV9/w
         +uZa78z80bA7JXNe7ceVRTIqochzCasW6TaX7O6U+YvKMQu3kdbWCN9PIR4AGhUoqeEF
         vrkFXvJsFWTg1zergSD27+KKrJzIMSuXP+VRHxPjTYrj3/KNOaTmBPZw+dM7+BbdKaro
         Ri9VoljahqllWk7mxRcR5B9xetPXUBqqkearQpb4nKqOK0MH9zAgLoMpNuObYWvVhmf3
         42D8hq0DaBUZZIZ2SFpnkk6ldvm7N9FnJsi07ZSTVDoMRbWQhTSIfjbB2K+TZx6oTx/W
         BEcg==
X-Gm-Message-State: AKaTC03GaGzUsDhIpLo4IOZyB+ck99B9ief+kh0ogHYsdfrYi0T7biaLNRGuGDDxSAt/ng==
X-Received: by 10.194.59.71 with SMTP id x7mr82965902wjq.74.1481314747931;
        Fri, 09 Dec 2016 12:19:07 -0800 (PST)
Message-ID: <20161209201906.ltauap7fydkc62f6@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Date: Fri, 9 Dec 2016 21:19:06 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: MCabber: remote attackers can modify the roster and
 intercept messages via a crafted roster-push IQ stanza
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Sam Whited discovered that MCabber versions 1.0.3 and before, was
vulnerable to an attack identical to Gajim's CVE-2015-8688 [1] which
can lead to a malicious actor MITMing a conversation, or adding
themselves as an entity on a third parties roster (thereby granting
themselves the associated priviledges such as observing when the user
is online).

The issue was fixed in the 1.0.4 release, with patch found at [2].

Can a CVE be assigned for this issue?

Regards,
Salvatore

 [1] https://gultsch.de/gajim_roster_push_and_message_interception.html
 [2] https://bitbucket.org/McKael/mcabber-crew/commits/6e1ead98930d7dd0a520ad17c720ae4908429033/raw
 [3] https://bugs.debian.org/845258
