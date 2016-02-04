X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["623" "Thursday" "4" "February" "2016" "17:33:18" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160204163318.GA10260@eldamar.local>" "21" "[oss-security] CVE Request: WordPress: New 4.4.2 security and maintenance release: SSRF and open redirect vulnerability" nil nil nil "2" "2016020416:33:18" "[oss-security] CVE Request: WordPress: New 4.4.2 security and maintenance release: SSRF and open redirect vulnerability" (number mark "U       carnil@debia Feb  4   21/623   " thread-indent "\"[oss-security] CVE Request: WordPress: New 4.4.2 security and maintenance release: SSRF and open redirect vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12207 invoked by uid 550); 4 Feb 2016 16:33:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12173 invoked from network); 4 Feb 2016 16:33:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=p1rvryf/10NHmPIrIsrsbEdtbxEpc8qD9QCQR6LwgnE=;
        b=Jlq6egUTEJwrjPORWF+z7ZY4TRJb1coxIIxrZfw27DvNGoSs6vvyjK5qaj9Tlv30Bt
         Z5IVevzfc7V0xxCDfx2r+REKe5MhWu2Pt97LbETKCqy63AKrcekSbOr7GE5q3EgiTJYu
         QONFTOdcTcbLv35haKI+fu7UTUE4gy1SzKaAQBAxnffagRmlD3R3YGSegLR0W1empBrR
         MxjtMb3rIywYKqBEwut8VBfINIDBh6Krx3ODhNMN58Znr973uMQGhGlmYOA6miM7W1cu
         vhSNKULguiBqM0Q/F939RX7WoVQz9rskZ8oOpguSJ3ROEEHUUflphx2izYz921+GfZad
         /ohQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=p1rvryf/10NHmPIrIsrsbEdtbxEpc8qD9QCQR6LwgnE=;
        b=bqyPa86OyvsrWRnuxwT+/4w16qsBpp/DBl7lq5Vmq89h25bQ+Gz907XdE6Gs3HT6at
         KoXwOx13LQyX9DcdbJ07/JH4xBontTlexT4OCI8n+O4B98+qkPoCLT5MJAnUKFDmqYkt
         v3z5DsqZcscB4UK6SG8QmFwA6/r+r8RU+3XhN8FDTaP+C0wKJaRe7c7FP4GXLWa7sy3w
         H95s3tagApBDwvgeQzjrF3qwv6g9u9FeGg8ERajyqBSGvCkpa8LhrHunzPP81QAf+CCx
         30znLSxsBc4ER2nQSKcDkMcZRDZ1wbTB5IsYryueLgM8q5ORMEir4ErZ/PlLw4zgyGKg
         /fKw==
X-Gm-Message-State: AG10YOR+lnawrA8MYsiImiOiefzo/TpwyhynLskl+JxA8OwAuBHx6pHMxrQVLdu5sg5qPw==
X-Received: by 10.194.117.68 with SMTP id kc4mr9009668wjb.111.1454603600738;
        Thu, 04 Feb 2016 08:33:20 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 4 Feb 2016 17:33:18 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160204163318.GA10260@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: WordPress: New 4.4.2 security and maintenance release:
 SSRF and open redirect vulnerability

Hi

A new security and maintanance release for WordPress was announced,
which addresses two security issues:

https://wordpress.org/news/2016/02/wordpress-4-4-2-security-and-maintenance-release/

According to the announcement:
> WordPress versions 4.4.1 and earlier are affected by two security
> issues: a possible SSRF for certain local URIs, reported by Ronni
> Skansing; and an open redirection attack, reported by Shailesh
> Suthar.

Could two CVEs be assigned for the repspective issues?

References:
https://core.trac.wordpress.org/changeset/36444
https://core.trac.wordpress.org/changeset/36435

Regards,
Salvatore
