X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["588" "Friday" "27" "August" "2021" "08:18:51" "+0200" "Daniel Bevenius" "dbeveniu@redhat.com" nil "18" "[oss-security] Fwd: Node.js security updates for versions 12.x, and 14.x releases lines, August 31 2021" nil nil nil "8" nil nil (number mark "U       dbeveniu@red Aug 27   18/588   " thread-indent "\"[oss-security] Fwd: Node.js security updates for versions 12.x, and 14.x releases lines, August 31 2021\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Fwd: Node.js security updates for versions 12.x, and 14.x releases lines, August 31 2021" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28584 invoked by uid 550); 27 Aug 2021 10:04:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7756 invoked from network); 27 Aug 2021 06:19:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630045146;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bb+3OwAB2KZfTven8kzfTNgsT+8ot6qMLLly1LeVquw=;
	b=ZX0SXYzOjdbC3UtbVrGe7K1R6Miq8B8xQrUWWcsx4cXQ8s0tpErfaY2eaFVjN74HTNxczz
	pTfiCF/C0d4pa+xfzea8m6Em/OPhEMGgFS+mnFrVbzBD2d2TszTHekCcE8szylKsgPRWwa
	p+DtbrVzkv7fc9IxSEeaOA7SX6GlBbc=
X-MC-Unique: 6C4Kyv2IP1maQwCCYWSoFA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=bb+3OwAB2KZfTven8kzfTNgsT+8ot6qMLLly1LeVquw=;
        b=l3VdYOYIGow1HUgV+chc8cM5jgciQ/xgYmRsV5hz4nAjjuLoIIxr9hwOHjbMT+2iw2
         MJpsaGZOzY8rcCiwCMHAJSqEa7fYfKMRgQ06ZTIPVkqu3ahVezGTyJVXmJrT6t1XgMCh
         W3Qj3wA7kpNevHCSuc2urZHX8ojL92gjYYY4JjaohBkNWgRCZRDS/5jqcTsKDtq2affY
         vR11+QC+rUrzoDnu/hABSRSOvPGd7PSJVK2x+5KYcPMRsifl2OlpKVEHfhbuxpoLUccU
         ARgWWiT0szLfk/pUzEhPm9cLOWh+2zh6pOF/EXlpEOVrBObz5tKmsTrY09eQgPhioUUC
         cDfQ==
X-Gm-Message-State: AOAM532JofK4jH41By/ysYMfqsjiDredUDpQSGwn7R+tOXulhHY1MRqK
	BmdlZh/ZXucUPpHiTJgPOdyvHQoKc2plTVAA/+Rr1APqlao6RwR4To6ILAVn1zec7/OktQlJ82o
	v2CT8krKa9aos+24em6BsTS4nxaQamBwl/+9Upfm1qM2X
X-Received: by 2002:a17:906:ce24:: with SMTP id sd4mr8089224ejb.329.1630045142653;
        Thu, 26 Aug 2021 23:19:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJynWEVJIMQ4YaHC8yylkJ7kYYNv5FL7LmZAhJJFp2rLdRFMBnlroaVGt96EbItyKfX1YFMeDhrGRpS16s9ijb4=
X-Received: by 2002:a17:906:ce24:: with SMTP id sd4mr8089208ejb.329.1630045142460;
 Thu, 26 Aug 2021 23:19:02 -0700 (PDT)
MIME-Version: 1.0
References: <33aabbe7-ef8d-49ef-b5b1-fa1bfd40d07bn@googlegroups.com>
In-Reply-To: <33aabbe7-ef8d-49ef-b5b1-fa1bfd40d07bn@googlegroups.com>
From: Daniel Bevenius <dbeveniu@redhat.com>
Date: Fri, 27 Aug 2021 08:18:51 +0200
Message-ID: <CA+4-CWyF62m0igSi0Fh3BG6Cj71h2_YHyxTxX=oBJ0MeBHrsFA@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dbeveniu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000af4d8e05ca84755a"
Subject: [oss-security] Fwd: Node.js security updates for versions 12.x, and 14.x releases
 lines, August 31 2021

--000000000000af4d8e05ca84755a
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: Daniel Bevenius <dbeveniu@redhat.com>
Date: Fri, Aug 27, 2021 at 7:58 AM
Subject: Node.js security updates for versions 12.x, and 14.x releases
lines, August 31 2021
To: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of 12.x, and 14.x releases
lines on or shortly after Tuesday August 31th, 2021.
For more information see:
https://nodejs.org/en/blog/vulnerability/aug-2021-security-releases2

--000000000000af4d8e05ca84755a--

