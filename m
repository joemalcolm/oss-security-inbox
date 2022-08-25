Received: (qmail 16178 invoked by uid 550); 25 Aug 2022 19:57:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16160 invoked from network); 25 Aug 2022 19:57:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc;
        bh=oo3GFW0lSXIWD5c7NV9swGlzoYXWmTZe/XWLTacXFGI=;
        b=X4b16RfW4Mk2t3/gzAxdioZLTTyFdk9h5SPTkU95YlE3+6Ju1EWLNlPXoWSZ9DBN6h
         4+SbRdpFpdRjk8mM8EelPIDrLIyou6KUlKxIEpzRnByuB5KepvbDl3ms8RphjwxYvst8
         ASY0SisWHqfz8GVqWIfb7yQz/f2OWcNFfJhLvmBnBmM8UbWPl5xDbDA4+Q705vJgKrx+
         XDSKQRo9DKoszHAsxX1NbozooGDB0u+24OXsp6MObJ5bB2BHr2JL52f0Sv9996CxZb6d
         vjHsmYmyC36dOsle9R+5JNdfD7/v93t10UNBpztTmIIxb7okQRCtJE1HAqyqBz2PCMn5
         /zqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc;
        bh=oo3GFW0lSXIWD5c7NV9swGlzoYXWmTZe/XWLTacXFGI=;
        b=jTVJpRpIE9KdWbECKKR7Qe5RvXA58lSGUcfcognV/lFHDUxXKWmpQUphwEPVvO6p1O
         VX+FasW22usx3UuhBk6H2xBTX9mXftRPeXF7uahZH5GKZcN1lMectLPcShUYge05lDrf
         5QTY2eMOxJ9lf67NGNIMA3dFpkMq8DnSNel6jDxozaXKbTcHsXt5+sJwHczJtVoglK50
         oysnkqytMKRy/wNVJMIZovz1JS8jQ9K4iYoyo/e87/M2/3CKFNKMT6MGJ8SE8fvI9Szl
         I3MhvGdWZ8HkwEqZP673DzeHUSKfgkhjRY70+1gBdvYWHXFwM01FGVbfFQTgR7w+hxFQ
         /tPQ==
X-Gm-Message-State: ACgBeo1lxJB8w/QBhpkFgGQWHkbGNF5eYAp1WJ7P1s1cGDNZRcYrqB1w
	iNMtWDOZ+F9GIFhwD+AKEY5BohVbuOmCBa9MHWQRdHpQ
X-Google-Smtp-Source: AA6agR7K0IUGkPAtqJw5rJN3lQeMWCcbPFz+eZk4MaeUviVtOifs2LfCN3np9l/HdokrFyAinn1b3NPVOUVlW/FWJdM=
X-Received: by 2002:ab0:2316:0:b0:396:513a:b113 with SMTP id
 a22-20020ab02316000000b00396513ab113mr2115892uao.75.1661457419055; Thu, 25
 Aug 2022 12:56:59 -0700 (PDT)
MIME-Version: 1.0
References: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
In-Reply-To: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Thu, 25 Aug 2022 15:56:47 -0400
Message-ID: <CAFRnB2UauQp7ebx2fqjOv1LFbs22P7=rV_YFqN=SbisRkMjAbA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2022-22728: libapreq2: libapreq2 multipart
 form parse memory corruption

Is this a READ or WRITE buffer overflow?

Thanks,
Alex

On Thu, Aug 25, 2022 at 3:52 PM Joe Orton <jorton@apache.org> wrote:
>
> Severity: important
>
> Description:
>
> A flaw in libapreq2 versions 2.16 and earlier could cause a buffer overflow while processing multipart form uploads.  A remote attacker could send a request causing a process crash which could lead to a denial of service attack.
>


-- 
All that is necessary for evil to succeed is for good people to do nothing.
