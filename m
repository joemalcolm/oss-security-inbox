X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1804" "Thursday" "25" "April" "2019" "12:13:37" "+0200" "Peter Korsgaard" "peter@korsgaard.com" "<87wojie6jy.fsf@dell.be.48ers.dk>" "46" "Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" "^Cc:" nil nil "4" "2019042510:13:37" "[oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" (number mark "        peter@korsga Apr 25   46/1804  " thread-indent "\"Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)\"\n") "<68fd216c-b9d7-ded4-ecb5-a5da62fc01b0@isc.org>" ("<68fd216c-b9d7-ded4-ecb5-a5da62fc01b0@isc.org>") nil nil nil nil nil nil nil "Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15480 invoked by uid 550); 25 Apr 2019 10:13:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15462 invoked from network); 25 Apr 2019 10:13:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version;
        bh=IYi64exkYtFpHbxLPVxNFNS/0GaK+Z18YHcSnX4OVhk=;
        b=SnWZBmCQw3G5XDvZQOLP9ubh3oT77IsW5W/bk+7NreC69HaCfGjN7MlsfEHYHOIY0h
         //jm9N8W1aHaZKuZkC1k/ND7AV0Hm7RRWA+bxHZmBeSqfC68YqEwRDdZ7Ld/ioHZ5smj
         SnpOWwi0nHY1tpTuF5JgBoROASJ0uqrczFxyzKowqBKlSXy+H2pB9jGV5mQ0putEGaXO
         zA6VCN6/PpFA+p2qPLXTORIZ3ShbvAgYpDf2tTUW0IYQl6FFrc+pqfrcn5/h+8T+HZ+6
         ItxFt+62ZI1MjeROTbx7OtrBsyUvdDY7JxTKZu0yzLEJ6OUmwFAX5qgKOne96xhq8nce
         5spQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version;
        bh=IYi64exkYtFpHbxLPVxNFNS/0GaK+Z18YHcSnX4OVhk=;
        b=r9pCsY8P/6Ffken7W701yalfZupo3r+lonC1c4znrSLO65fq+tvS1AONQXGjgR6cof
         5hml4y9jjZ2npir3OZmH3tEJlpKnrfk20i286AXVd4zTIrNjxEEtVx9w7a0N/VsZpWaK
         gcFQrI/fiyZ0I+siOfjha6wvGrQZUjme5H4KKZkO+SApoa4T3pI9PtrPFExmHJ0Ux2x1
         fyEdpbyCXafUjfJ9nt1EM/XZn8kdv13gEzoUTq8kNGfKHlRynEsn/O7duWKREMxk4To5
         vyZWgM2qORN3s6UKgr7barkoU9FHnL39YLuE5tQtmciyO3bxgQ6wbVEwIR6voe5pPRE9
         ciow==
X-Gm-Message-State: APjAAAUlugKu+HA3IFU6M0RXxT+2+HzZljrDIw+qEBC2eUO3AiTcwoTR
	NW9o6DJmGOlRHS0IoEwFtrw=
X-Google-Smtp-Source: APXvYqxyqNuSrnQT57QzO86Epis4frBcPvgMedVnDk6kAbSUF8m5UAQsl4v9OAKeZvLKjT0rZMfHeg==
X-Received: by 2002:a17:906:515a:: with SMTP id s26mr152746ejl.34.1556187219205;
        Thu, 25 Apr 2019 03:13:39 -0700 (PDT)
References: <68fd216c-b9d7-ded4-ecb5-a5da62fc01b0@isc.org>
In-Reply-To: <68fd216c-b9d7-ded4-ecb5-a5da62fc01b0@isc.org> (Michael McNally's
	message of "Wed, 24 Apr 2019 22:55:00 -0800")
Message-ID: <87wojie6jy.fsf@dell.be.48ers.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Cc: oss-security@lists.openwall.com
Date: Thu, 25 Apr 2019 12:13:37 +0200
From: Peter Korsgaard <peter@korsgaard.com>
Reply-To: oss-security@lists.openwall.com
Sender: Peter Korsgaard <jacmet@gmail.com>
Subject: Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)
To: Michael McNally <mcnally@isc.org>

>>>>> "Michael" == Michael McNally <mcnally@isc.org> writes:

 > Today ISC disclosed two vulnerabilities affecting BIND as well
 > as a third vulnerability which affects *only* BIND Supported Preview
 > Edition (a special feature-preview version of BIND provided to
 > ISC support customers.)

 > Information about the vulnerabilities can be found in the ISC Knowledge
 > Base:

 >    CVE-2018-5743: Limiting simultaneous TCP clients is ineffective
 >    https://kb.isc.org/docs/cve-2018-5743

 >    CVE-2019-6467: An error in the nxdomain redirect feature can cause
 >    BIND to exit with an INSIST assertion failure in query.c
 >    https://kb.isc.org/docs/cve-2019-6467

 >    CVE-2019-6468: BIND Supported Preview Edition can exit with an
 >    assertion failure if nxdomain-redirect is used
 >    https://kb.isc.org/docs/cve-2019-6468

 > New releases of BIND have been issued to fix the vulnerabilities above.
 > They may be downloaded from the ISC website:  https://www.isc.org/downloads

 >    -  9.11.6-P1
 >    -  9.12.4-P1
 >    -  9.14.1

It is a bit unfortunate that these security fixes now use
isc_atomic_xadd() which are not available on all architectures:

.libs/client.o: In function `mark_tcp_active':
client.c:(.text+0xc7c): undefined reference to `isc_atomic_xadd'
client.c:(.text+0xca0): undefined reference to `isc_atomic_xadd'
.libs/client.o: In function `client_accept':
client.c:(.text+0x2210): undefined reference to `isc_atomic_xadd'
client.c:(.text+0x230c): undefined reference to `isc_atomic_xadd'
.libs/client.o: In function `exit_check':
client.c:(.text+0x2958): undefined reference to `isc_atomic_xadd'
.libs/client.o:client.c:(.text+0x5cb4): more undefined references to `isc_atomic_xadd' follow
collect2: error: ld returned 1 exit status

:/

-- 
Bye, Peter Korsgaard
