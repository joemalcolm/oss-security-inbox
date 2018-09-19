X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["513" "Wednesday" "19" "September" "2018" "11:05:18" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20180919090513.aatf3ezevweolyld@lorien.valinor.li>" "19" "Re: [oss-security] Linux kernel: potential local priviledge escalation bug in vmacache code" nil nil nil "9" "2018091909:05:18" "[oss-security] Linux kernel: potential local priviledge escalation bug in vmacache code" (number mark "U       carnil@debia Sep 19   19/513   " thread-indent "\"Re: [oss-security] Linux kernel: potential local priviledge escalation bug in vmacache code\"\n") "<20180919082343.zumj3iknwpwmlbwv@lorien.valinor.li>" ("<1731710540.14020604.1537344883944.JavaMail.zimbra@redhat.com>" "<1470776078.14020763.1537344926470.JavaMail.zimbra@redhat.com>" "<20180919082343.zumj3iknwpwmlbwv@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10169 invoked by uid 550); 19 Sep 2018 09:05:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10137 invoked from network); 19 Sep 2018 09:05:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zv9edYIgomtJ4r4QOYgMvzDJUmEWAz1qWcjCHSUGJzQ=;
        b=VtD3YvqTUhf8znK7mcx/MNmD2GEGSdOvq8nBotxkoxB6B1tNBNbfClRnTxUXNYqctp
         OlX6QBnPdLPalG7xn4veXjEbMly4H2Znr8JAamO1xuXYppLwB2B/ls7pL8Vd+cLKcFqQ
         QKibd7EweudhWNCq4hFVI5NGr9zAxilyD14N2klmz1lfYhh4xUOBIHgClJMQgHJAtx/b
         iyF0DTJoPFJAAssibzoVw7scjuG93VKHzdmChWnMV1GInLGt8KkoWC27BFL3RAwpd0zJ
         vqZFWMWAKjDLEcWXophcLtQFsxxQS4f2n/8LKeaKzMZOFhSyb/r0s/tqODkhfPNe8ikt
         6y9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=zv9edYIgomtJ4r4QOYgMvzDJUmEWAz1qWcjCHSUGJzQ=;
        b=NTysHhQ/hcMBsj6X4NHAbT7WT77zOd+KAalgmkt219DUURtJctA9QdaHICROhB93Nb
         64QuoscNrV+4KMH5DH+G9D9BltkwonWnHTXOQ4kGlCqu2hl4jk4ab8E4v/UTIDafubjE
         gR0p96J0mmW0meqFTZYgfNhqmorJOKLyeHlQ09xfsae7Z3goxmOZ6Z7gbv4MBacv8L01
         tQgA72PQHhNRF7cdYYRzO6f9Rg7ZdSD+SB9n2egpw9Lq01K2HHONpIpI/ZTEX/xrA7Zy
         Y1jQNpibDXTgX3odq5C2nmxmNLl5fu5PusQbractR0QeEh1ytx/fBdmgeEHWjaDLe9kU
         JzVQ==
X-Gm-Message-State: APzg51ATjt8m2Ph0NSUTSiJTVkycL2Xrl6wfYO1EYYPDNbUir3uCkBee
	slPrmIwjfBxAaCixmG7UbfQ=
X-Google-Smtp-Source: ANB0VdaJggOaFoUwYZWEfWLH92nZLZHvvESqaqDzczXQ6caybrec4KhGgn9+BtwMRfReflqVYB1Lhw==
X-Received: by 2002:a5d:438d:: with SMTP id i13-v6mr27796915wrq.156.1537347921078;
        Wed, 19 Sep 2018 02:05:21 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 19 Sep 2018 11:05:18 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Davidlohr Bueso <dave@stgolabs.net>
Message-ID: <20180919090513.aatf3ezevweolyld@lorien.valinor.li>
References: <1731710540.14020604.1537344883944.JavaMail.zimbra@redhat.com>
 <1470776078.14020763.1537344926470.JavaMail.zimbra@redhat.com>
 <20180919082343.zumj3iknwpwmlbwv@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180919082343.zumj3iknwpwmlbwv@lorien.valinor.li>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] Linux kernel: potential local priviledge
 escalation bug in vmacache code

Hi,

On Wed, Sep 19, 2018 at 10:23:43AM +0200, Salvatore Bonaccorso wrote:
> Hi Vladis,
> 
> On Wed, Sep 19, 2018 at 04:15:26AM -0400, Vladis Dronov wrote:
> > Hello, Davidlohr,
> > 
> > Thank you for reporting this. Was CVE-ID assigned or requested
> > for this flaw? If not, the Red Hat (as a CNA) could allocate one
> > and handle adding it to the MITRE's database.
> 
> I requested earlier the day one from MITRE (via webform) but got no
> assignment yet.

It got assigned CVE-2018-17182.

Regards,
Salvatore
