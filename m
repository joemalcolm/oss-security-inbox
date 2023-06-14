Received: (qmail 20214 invoked by uid 550); 14 Jun 2023 05:31:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20194 invoked from network); 14 Jun 2023 05:31:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686720659; x=1689312659;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qhm1R2q90KDy2YCYw5wCweXVOTxcwieDaETPhuHQgr8=;
        b=PQwp0Fo4pgHaAgMreeFCDTplrFTSvEqjqANzonDblMOZj9T3lOz3PE2Vi+a0VhkOoD
         DLa1pPrAeX2sUJWcyD4f36heSYO+RUZH538V0EX7IuKH9Y/QGWxTnaGqwvWIFm9bte/a
         c4V/e2UqfdbzKvNBdXjYYfnDJttji6ZqGLJMAxfXSlVg97HU+J3AGM4+/TUERkrKcNYc
         Mgu9I4lGHOcwixAwlmqGTp6O5yN1CbNco0G5VlRU1i0TtZdz7EKkbtwgbiepPa5u/muv
         JiB/qZHgHBXwIeyJgB9oKNGLWJ1ljmxznRjEQWBHS5gKE9BmTuuzpuSbS1SmGuWuqgUf
         GGjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686720659; x=1689312659;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qhm1R2q90KDy2YCYw5wCweXVOTxcwieDaETPhuHQgr8=;
        b=NFy2eHoreS4XJR3xnL0lOx8R2I45pR8hZaB7+YZNiJDyBKTBKqL4qPUX3ixj5TiTQj
         wnaSCP/8/VExX8bHwem646IUJgKVKySeMXjcaLAMShiH5AgSqz3UNm3F8q4H9xYrMl9X
         GKF944dlAlcqGs+QskcyJT74UCa/Fe/P5pDyHLmGEREvm/lMUE7MMippUDCllZa2a/zx
         oag6NAJHC8vRxBQ/lkNBm9yAnFSgF+j0W4skeoWl3LORC20ZbXM/8Pwdz3UEEn4Ej0v2
         Y7weSJgVtQSwQ0ZNSIoBVbD8d47qvPTWL6jX5BCN6N9PvTuuTgozsej4+nnYPIVsHPls
         bh5Q==
X-Gm-Message-State: AC+VfDwG5gxmlbZ4AbJ8kLMYyZfNZ04FTgwebt1RHGh+BUQGpdYba+fI
	hbbohrcfiXBJY+Mewyktii0OKTkEepCO5g==
X-Google-Smtp-Source: ACHHUZ6CmRF8yzK0qV7kVHr95efxgJKsJDWfFWKpqz2C3RTqHbCfmQmOicmEwPWGs6Pt67+Zy4LIVQ==
X-Received: by 2002:a17:906:99c4:b0:971:9364:f8cd with SMTP id s4-20020a17090699c400b009719364f8cdmr13211605ejn.44.1686720658812;
        Tue, 13 Jun 2023 22:30:58 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 14 Jun 2023 07:30:57 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZIlQkTsEsfKbRus7@eldamar.lan>
References: <2308609.bdg04gU6LQ@portable-bastien>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2308609.bdg04gU6LQ@portable-bastien>
Subject: Re: [oss-security] Stack overflow in imagemagick coders/tiff.c

Hi

On Mon, May 29, 2023 at 08:11:18AM +0000, Bastien Roucariès wrote:
> Hi,
> 
> Reading changelog and code of imagemagick, I want to report a stack overflow with crafted tiff file in imagemagick
> 
> Fixed (after 6.9.12-26) by:
> https://github.com/ImageMagick/ImageMagick6/commit/85a370c79afeb45a97842b0959366af5236e9023

CVE-2023-3195 has been assigned for this issue according to
https://bugzilla.redhat.com/show_bug.cgi?id=2214141 (not yet on
cve.org feed itself).

Regards,
Salvatore
