Received: (qmail 21883 invoked by uid 550); 29 Dec 2025 06:06:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21838 invoked from network); 29 Dec 2025 06:06:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766988390; x=1767593190; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hRYMN+2Izjat+SpH7JmNQUsvVyS0lhEhaErdfgoyK74=;
        b=VEN9iHNKLfmjm264kqX3nGVR8aXHByIi5pd5Zx9ZMvEGZrTVInZC12gm+H0gom/BWG
         Ehd/L2v0P9LuK1Wi+Q/bmP0QkmKP5fG8kUAwEXHGjhGmUchcYgtw21aDTV0HmxGNCsSF
         t1p4fZLvhLGeKkn+ckwCXloPeuN4ExxT7JxBYPuGUjcCT5N0j2G1XXEREJjxIvyxGrdR
         8GmUtnSIuI5aebilUsB/fHKHdJpWZqKsTpZYBdgSzc6aa/DuIhlbcPfp+c7N1tE0tTq8
         ttcym891CNiOU48pRJZo/mNFShcB2fUgirJ6XT+tgJiWRfdm6dz+PqP6UBvpfS55OZzy
         YEhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766988390; x=1767593190;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hRYMN+2Izjat+SpH7JmNQUsvVyS0lhEhaErdfgoyK74=;
        b=owyeq0CTbMRvkLL33GSrMrgZET5sRptwD8fERiO2WvI6rJRRC+WRLUbKZ+XONmqy/t
         atyCEZvjAO+cPYt9knGdxCBCycrjuxcVT3zfJpBRnlcxlMEG2OdL8LP4vGUU/Sze0LNA
         4yPRYrFnlyopI2jdlNpWWZ+FPCEnlXKmohAFNXfiWdhjqeb5ow4j0sF3GgyB+sGQZJMh
         i1vKpOklBAcxqCPl4xChTHftk0w4XzbjqgwoKqEm+PS9+Zxp2fdm8bNFv4MkDnUEm3Aa
         VQqMdvNBhJsQRfBjBdAYEJHfR+KbHJGOhxo+ADbKpdGzafW1UPdKUz0GoHGarx6xEfA7
         zzfg==
X-Gm-Message-State: AOJu0Yxl4OQkURNWDNYYOw8Ts5oiXe/ICBxIOBQ8q0UCU1gVz1rDzUn1
	YH1yj3KMUlw7AqA3ci5S5Wz8xgf0yZ+NiuBTJoc6HTQ2PdJo6jqzcEIBdVqYoAEB
X-Gm-Gg: AY/fxX6v7GkYmmnkNgqFIbANU856JpYgsvvjVo09XDJZ7fH2+Ia9AtzB4suuN1x5OxL
	rf85Osn609mWsloPPucNQ+1kRPdIFUj1Ce+cgqnfV11RzAFxSlXERxu9u+BrejkXiGwntW5gmWG
	Bknx1XSVn7nxKbgEirivJ1VRAx6BMYAD8YbmbHgoFzTpzfK8knae4qvSWRG97iyhsn1sVVqHNPP
	Acjbzt3EX2qCqDsgVblalQzkpCK2ij1PE4uIN6d0rUaevRPOAexZC0+RbtWmL7RCGrEeEoLBUGI
	u9u81zZZmANgTEM5vjhdlTm87fTqWMFgnIMFp48S3Ao8T2vLdTfFidtrbs/vR4jv9zGuWCmhN8o
	BkSBzOySersywS9ZaM84yauPtn9D84NT47pcOZ9r31zlA3r+u+ZRuxLzE9teOu2YiedJUjHXTsf
	Z1fJ5t/ffXH6sxQ3a4GJpLKVVHIHTmQqv1VD0LwCUtUMFm
X-Google-Smtp-Source: AGHT+IGTpaO1Lqi3bbymdFENMwYQffU+HQ5CI7V5DMEQgokZtthPimTKiPiQ+emhnZyc5WOHk75M6A==
X-Received: by 2002:a05:6000:400f:b0:431:5ca:c1a9 with SMTP id ffacd0b85a97d-4324e4c9e82mr39206002f8f.23.1766988389729;
        Sun, 28 Dec 2025 22:06:29 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 29 Dec 2025 07:06:27 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>, contact@gpg.fail
Message-ID: <aVIaYxlz7Am8NcgF@eldamar.lan>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
 <20251228042744.GA629@openwall.com>
 <0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
Subject: Re: [oss-security] Many vulnerabilities in GnuPG
X-Spam: Yes

Hi,

FTR, these two got CVE assignments so far:

On Sun, Dec 28, 2025 at 12:47:30AM -0600, Jacob Bachmeyer wrote:
[...]
> Item 3: Cleartext Signature Plaintext Truncated for Hash Calculation
https://gpg.fail/formfeed

https://www.cve.org/CVERecord?id=CVE-2025-68972

> Item 5: Memory Corruption in ASCII-Armor Parsing
https://gpg.fail/memcpy

https://www.cve.org/CVERecord?id=CVE-2025-68973

Regards,
Salvatore
