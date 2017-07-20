X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["602" "Thursday" "20" "July" "2017" "05:49:13" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170720034913.cvulnaayyhlhp6mr@eldamar.local>" "21" "[oss-security] phamm: CVE-2017-0378: reflected XSS in login page" "^Cc:" nil nil "7" "2017072003:49:13" "[oss-security] phamm: CVE-2017-0378: reflected XSS in login page" (number mark "        carnil@debia Jul 20   21/602   " thread-indent "\"[oss-security] phamm: CVE-2017-0378: reflected XSS in login page\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27906 invoked by uid 550); 20 Jul 2017 03:49:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27888 invoked from network); 20 Jul 2017 03:49:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XbmS45hjrJ4vX31c6gqZ6vU6xa97E8QS3jajhZlsV48=;
        b=emZFla21cSheHzCHtf6ofLqJxn7EUjMPd9k1LoWou0jr++BBmzHhoP48AgXPlURuf4
         KyX40rkEtAnVU9mNz1CWwjatN+Fx2G1dDmjqikztHhvsZGyF801qxWtywEP/WUX4zq64
         F8tVp0ymecD01ZIv3JE0HHkg9A2o+lVV26SbgVVoJTwtKpjvRdogc1QyRncSG5uUJf4C
         ulOS0QmtO6Er8fxj16p8DBfX+9FDFEoWeCo/XbFNcySj+e9ZHhK3Mfnvu7ke8g/fMvi8
         hf5H6GUFDUsFA1zGCGoRVbv1SxJpxg2qko0oZeU9o3hbZ2Bse3omNz9D1OXK+AVC7udY
         OAUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=XbmS45hjrJ4vX31c6gqZ6vU6xa97E8QS3jajhZlsV48=;
        b=eT7UQ5p2gQVDhz36twKdIJXSUxLE66sSiCqMgSVvdAQ33IUf+fY2CwjUWRsoFZ73OK
         F7GpoFfXs34Prb3b0SXNZgAPZNV6hamH4ivrGtj6wMbcuhFVjP4YwELXQoez3A79gutZ
         2/Z9lVvud9zS1oTglf2Ecr6nMytyUmir6U37msrAMdIzGcIsLkK7hZSap651Vg13kzZo
         2QPDd3NADQF8blRRE78/bM004aNHNaijjaivMnIX9IX6FbBF8I2bnnQAuk6F/JnqAzJl
         DviE7h/ZgBt8N9dl/NM9EswXHGyi5ZG3YvpDz980k/xYHXP2tq/xUULrvqmOW5yfp7Pa
         Iypw==
X-Gm-Message-State: AIVw113PQE8TDcHwXvy353m+OWZXGbvaEdgE0qhuAaLt2GJF/g7p+x9N
	wHNeSN9ZriQYHg==
X-Received: by 10.28.69.201 with SMTP id l70mr1207321wmi.53.1500522554366;
        Wed, 19 Jul 2017 20:49:14 -0700 (PDT)
Message-ID: <20170720034913.cvulnaayyhlhp6mr@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
Cc: John Lightsey <lightsey@debian.org>
Date: Thu, 20 Jul 2017 05:49:13 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] phamm: CVE-2017-0378: reflected XSS in login page
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

John Lightsey found a reflected XSS vulnerability in phamm login page.
phamm is a PHP front-end to manage virtual services on LDAP.

Quoting his report in Debian[0]:

> While looking through codesearch.debian.net I noticed that phamm's
> views/helpers.php uses $_SERVER['PHP_SELF'] in a way that is
> vulnerable to reflected XSS attacks.
> 
> To reproduce the problem, load a URL like this in Firefox:
> 
> http://127.0.0.1/phamm/main.php/%22%3E%3Cscript%3Ealert%28123%29%3C/script%3E

Refrences:
 [0] https://bugs.debian.org/868988
 [1] https://github.com/lota/phamm/issues/21

Regards,
Salvatore
