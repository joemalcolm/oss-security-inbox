Received: (qmail 3503 invoked by uid 550); 22 Dec 2023 15:55:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24047 invoked from network); 22 Dec 2023 15:47:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1703260078;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CVazQTpCcf5kmIwhPN7Iggo1UTJjZAtEzFGnlOk4WE4=;
	b=WsUfoaXJ9zjBn3vTzA93atublX5gUkkuV8/Ski6oORJh0DypbeFqKT4wyx3wvRro+XvQrt
	tn4di7sPMSyCsyrn0MVZGB6sXRKFyBXazPgwYvAgsQob1btDlRKn8hobyEG5jKHziOnC9L
	9YHrsVupiffHoQHiR61QG2PHNvCxe6o=
X-MC-Unique: -XNw2AHPO8i989Hej3_MrQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703260076; x=1703864876;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CVazQTpCcf5kmIwhPN7Iggo1UTJjZAtEzFGnlOk4WE4=;
        b=ZxXsgiJmDufxqvXoon9hHP6dgv24HApxW+AeKg/v9q3TxclLn/v47fh8SM3iEGJ2nW
         VRRWgpP6x9m82Z1MMiHkARTSCkoYuLBSHWqf8ltPAY7gZ8JrdT4L+0Sb/h2Cl98mQj9N
         9HyEASxu4XhkTxx1UTTdlxDsJSMxF3C97X3/bYW9B7xLB2P9i0KTdLyaAQ8tV9m90wv0
         aqaC0TTWwo9sW5Szo7YesR/QEyWsZyKPf+n6MqASOgP++AdkW9O84fnZUXvJBUJfJ8x3
         DqWwVYWzir4fJNHNay/zF9rcq9CDKBy3JudyPEfmI0ulPYmHXU0iG/4tHvwkynIyFPSw
         UcgQ==
X-Gm-Message-State: AOJu0YyU2Xvu0hBgnv0p3Y3liS9k1kPljmZuj8KeSTYTqLweotYGB2Jg
	G+/2d4JtynfH/YPjF/JLd4MEChUeqQwKSxip3TYE+4cvnVGL09g2aQq+88jeMA7gQCFChmQNhSc
	w34RHuhfWqFfss6jfg1MvM79Z91KIIfP0SFu+V1gT1Fno8ArOcb9HLOVjDy+I
X-Received: by 2002:a17:907:596:b0:a26:a1a7:a67d with SMTP id vw22-20020a170907059600b00a26a1a7a67dmr802481ejb.46.1703260076219;
        Fri, 22 Dec 2023 07:47:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFyQYiNkPpNjPuxrpsNUpcPDSa9DuL4FCoBe2YcrdijO8416vWCvZxeNiC78Gfg/snlNzfpfK+6MEW/NYC3F4U=
X-Received: by 2002:a17:907:596:b0:a26:a1a7:a67d with SMTP id
 vw22-20020a170907059600b00a26a1a7a67dmr802477ejb.46.1703260075857; Fri, 22
 Dec 2023 07:47:55 -0800 (PST)
MIME-Version: 1.0
References: <20231221143630.GD14101@suse.de> <20231221144656.GA40693@veps.esmtp.org>
 <20231222104647.GH14101@suse.de> <ZYVufT0sq16Z-M43@symphytum.spacehopper.org>
 <20231222121134.GI14101@suse.de> <20231222150438.GA13989@unix-ag.uni-kl.de>
In-Reply-To: <20231222150438.GA13989@unix-ag.uni-kl.de>
From: Rodrigo Freire <rfreire@redhat.com>
Date: Fri, 22 Dec 2023 12:47:44 -0300
Message-ID: <CAHjsZGbiZYGug2L04iZ+VEmMg-pdfKyKOGdcSeCLnsZYd0Vm2Q@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: New SMTP smuggling attack

On Fri, Dec 22, 2023 at 12:10=E2=80=AFPM Erik Auerswald
<auerswal@unix-ag.uni-kl.de> wrote:
>   * The CERT/CC and VINCE involvement resulted in "there is no
>     vulnerability".

I'm trying to make sense of it - where's the compromise of the
Confidentiality, Integrity or Availability of the affected mail
servers?

