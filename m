X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["668" "Thursday" "14" "September" "2017" "20:14:03" "+0000" "Armis Security" "security@armis.com" "<CA++9HO8FVAQw-oPFzqQUdOX6MnyP0s681grArPSPusGHAmChQA@mail.gmail.com>" "26" "Re: [oss-security] Linux BlueBorne vulnerabilities" "^Date:" nil nil "9" "2017091420:14:03" "[oss-security] Linux BlueBorne vulnerabilities" (number mark "        security@arm Sep 14   26/668   " thread-indent "\"Re: [oss-security] Linux BlueBorne vulnerabilities\"\n") "<20170914121219.GW11536@dhcp-25-225.brq.redhat.com>" ("<CA++9HO8J91=AAqH6cUkYOi=AWpw=FXD7sajp2mQkdD66AO3WBw@mail.gmail.com>" "<20170914121219.GW11536@dhcp-25-225.brq.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15392 invoked by uid 550); 14 Sep 2017 21:18:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24199 invoked from network); 14 Sep 2017 20:14:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=armis.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=FEAUNPoiHIq+4UKbddbLTJqBINwEeAB9hmVRjD12nZ4=;
        b=YXpPS7fCyiwVRyEIZ+2C7jRk+OTbEMsHpM+xo/zbQeGcynIcZnidQt0TG7NuwUL9iq
         pEdSGjqfljvObi/lTRoGFJfCTs1dB8YDFnvDNUJkRrbmn9E/pnzVbTDQm0/+vtlFXrlG
         llsF1meW43LvuE/4E9m1NpVgQ+tEDBqBdAFq4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=FEAUNPoiHIq+4UKbddbLTJqBINwEeAB9hmVRjD12nZ4=;
        b=CUb0UAMt2LjLdHLasTI/UAw61giXa74acquNTZS3RJo8wwcUa82vWaEzHOMS5YSgDR
         MC9RyrBHl6iggvq5IzDJ17DMmFUDa/Tcgxx98K8WCdcD5MHSic6ulNEm/vzxxBX/52Ra
         ZtibRaLa2zWsrU8zsOhmMlAa9Bld+MmH5FwjG8obKXnkBXceNGvcSZsWCHA+Y6rTu6AR
         OLfJctQfPlTR7yV31aomGtxB731Q7ytpbnnCyixW6p3LQlXk7eVWTTLMD1JhZ8KaN0Q1
         CKM0btaCzwAYYBRoDcVa7+1eYV75siCkczqYEi9jkwRqh2Q/4JadaaLicwf2rFItr8HG
         TzGg==
X-Gm-Message-State: AHPjjUjryYCeUI4NvoRot6o3vkzt7SHpZkiw41rEOsTN1/Zkgd1Tljo2
	AEa48uV1Brx0HBNkjOX7nRvT6kofmBdtZZwpYZ4eew==
X-Google-Smtp-Source: ADKCNb6Cn9vDzdRnyWsjJRzt9nEsVt1EbZQ8ucFiocUVvt54VbJUajjNX0Myzfbgyyycv3PwVbrZnMWyTDTnKGYmr0k=
X-Received: by 10.80.204.10 with SMTP id m10mr11524327edi.73.1505420054195;
 Thu, 14 Sep 2017 13:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <CA++9HO8J91=AAqH6cUkYOi=AWpw=FXD7sajp2mQkdD66AO3WBw@mail.gmail.com>
 <20170914121219.GW11536@dhcp-25-225.brq.redhat.com>
In-Reply-To: <20170914121219.GW11536@dhcp-25-225.brq.redhat.com>
Message-ID: <CA++9HO8FVAQw-oPFzqQUdOX6MnyP0s681grArPSPusGHAmChQA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f40304392f0491828705592beb27"
Date: Thu, 14 Sep 2017 20:14:03 +0000
From: Armis Security <security@armis.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux BlueBorne vulnerabilities
To: Petr Matousek <pmatouse@redhat.com>, oss-security@lists.openwall.com

--f40304392f0491828705592beb27
Content-Type: text/plain; charset="UTF-8"

Hi Petr.

On August 15th we have contacted one of the senior maintiners of BlueZ and
attempted to establish a longer embargo period with him. Unfortunatelly his
suggestion was to post our findings to linux-bluetooth@vger.kernel.org,
which is a public mailing list.

So we decided to disclose our findings to the secure mailing list that
unfortunatelly only have a maximum of 7 days embargo periods.

I am happy to hear the red hat security team allows for longer embargo
periods, and we will contact you directly in the future.


Thank you,

Armis Labs.


>
>

--f40304392f0491828705592beb27--
