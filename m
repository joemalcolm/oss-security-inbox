X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["609" "Tuesday" "6" "December" "2016" "13:56:28" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161206125628.g46mnllue6akwt5p@lorien.valinor.li>" "21" "[oss-security] CVE Request: html5lib: potential cross-site scripting vulnerablity: quote attributes that need escaping in legacy browsers" nil nil nil "12" "2016120612:56:28" "[oss-security] CVE Request: html5lib: potential cross-site scripting vulnerablity: quote attributes that need escaping in legacy browsers" (number mark "U       carnil@debia Dec  6   21/609   " thread-indent "\"[oss-security] CVE Request: html5lib: potential cross-site scripting vulnerablity: quote attributes that need escaping in legacy browsers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27657 invoked by uid 550); 6 Dec 2016 12:56:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26608 invoked from network); 6 Dec 2016 12:56:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Y2+W2iZ++RpxROQMmiqyqqos5xV1not+xEPs+DI4bgs=;
        b=LQgoVf7b2eRi3n8TaB+i5WyaL+28ri/JVaMylKV/uVejX5CY9bB3iUtnbO5yCvnTxA
         okizuG5Alwd4j7ZyyYDu1/KA2DZHIaJ1wubpKnqBEQJUdN+cVYDL3vjVzrJw+RwU+ONw
         Rb+xKKvBmUBZF/ByYYhMAUOfgqBc0/RsPD7LmMUZuAB7ILFY8tQ4YGR092ZDKabvRZFg
         5xofBkVQCsQjP3Vm8C1dRklWjJpqqvXcCZNoNDgzLZOGc41sGAcpNN/CIcXEECWUzGHM
         tTby5D/1uxq3FlUm2iJGmotMoT3UVMoR/HWlzhfuG+nX6ERpncIxprQw6OUL+Z6iJ+U6
         9crA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=Y2+W2iZ++RpxROQMmiqyqqos5xV1not+xEPs+DI4bgs=;
        b=X16otdR7GjjRsSjuDE56BstDl0IpdSTJqYUKjpkVKpZ/ZecRk2lsanNK1qDSkorGuj
         dxj4xF0/2xU96/As6iGoYWVs6MZ9fjq2OlwqS2gFYfZT13B5VALg5j5EZoE9lcWc/9cJ
         Y+Ani+Vej4VCt/2/UIy2GAxTHPJaFIC17xXySGxAcS/N8shHMR4oPk+jFe6IkG3tgMdG
         TA9JCgbkNuagSmbwTKjOawEHz0nHQK4+0r+UfZFk0T8n57Wlp+ZyvKztj2Qcbl3c4D4p
         5vuR6glugv8nIew59nzDo481GX7JXCB4DTDoA9f6hlOznZ3EaPYf/PVZu8IMNkyW2ir2
         Am9Q==
X-Gm-Message-State: AKaTC03SVKLZ6p6uommkWpA1PBTlMHJ0SvT1ygTrFh7OTUyZwDhuZz987qAyZuzkY/CDDQ==
X-Received: by 10.200.57.54 with SMTP id s51mr53287840qtb.68.1481028991497;
        Tue, 06 Dec 2016 04:56:31 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 6 Dec 2016 13:56:28 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: Scott Kitterman <scott@kitterman.com>
Message-ID: <20161206125628.g46mnllue6akwt5p@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: [oss-security] CVE Request: html5lib: potential cross-site scripting vulnerablity:
 quote attributes that need escaping in legacy browsers

Hi

As found in
https://www.sourceclear.com/registry/security/cross-site-scripting-xss-/python/sid-3068/fix
html5lib fixed a cross-site scripting vulnerability in upstream
version 0.99999999 with commit 

https://github.com/html5lib/html5lib-python/commit/9b8d8eb5afbc066b7fac9390f5ec75e5e8a7cab7

References:

https://github.com/html5lib/html5lib-python/issues/11
https://github.com/html5lib/html5lib-python/issues/12

Question about the CVE assignment for html5lib was raised as well in
https://github.com/mozilla/bleach/issues/229

Could you please assign a CVE to identify this issue?

Regards,
Salvatore
