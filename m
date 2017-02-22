X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["365" "Wednesday" "22" "February" "2017" "20:08:49" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170222190849.qdh65xvhpsu5pao7@eldamar.local>" "11" "[oss-security] munin: CVE-2017-6188: Local file write vulnerability" nil nil nil "2" "2017022219:08:49" "[oss-security] munin: CVE-2017-6188: Local file write vulnerability" (number mark "U       carnil@debia Feb 22   11/365   " thread-indent "\"[oss-security] munin: CVE-2017-6188: Local file write vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32576 invoked by uid 550); 22 Feb 2017 19:09:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32555 invoked from network); 22 Feb 2017 19:09:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bsHMTLLakmjiboihRIJb8Kb8KB+muVQnGKiinjf2nI4=;
        b=qNO5NiqiBke0ZSWUeGlj1uCaTl0mEBth6cKChIxD/t1gtxPLo0kijUs3wQNKdZ3QsJ
         lIpsO+3ZOvK+Zyp/uHNGKT6XOQ0Ra5tMs6UJAeuwSEDQIMNd1jER3nIItZEP3+UPutlI
         lmkKJdifuX2hCnCpFdObXq8nh0CmWyn98qp3vPo54pYJJf3v9vk8IAnMHWNj3mtW/dt0
         poBDs+SorwAO2o6xuvVvN/2QC6RwH6EToZ5bYPDFx029E9ciimfpTQoEA2N9wZD+bpib
         OF2RnKVfGAgaiuKlWmMx72XMyXRdrLYtCmkAQWor4t6wAznO4ZDF/UzzGNp6jdTdPpD8
         Mo+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=bsHMTLLakmjiboihRIJb8Kb8KB+muVQnGKiinjf2nI4=;
        b=pkvhW0PLxrmdWqy8xnOmRagBr02J8avegioFKC+ynNRWuRe8ilSWiV2Gjim95Yo97J
         6aUbz3qQoCgRlqHUA8a+20+moEyih6SbzJMNL4y3LBmbNceLe5ZghbdJUGTU1Ev0m4q+
         rXbwvYProcG2EA6v9TNrh68qpt92VTs+b2GTGmZDx5nrxxVEkT300R1JmQv28BBBevN8
         U+yTlF8dYrCijtQSA+3ACVe6yjtKrcmkmJC9w7FT6iTHFjznH3DzQpTKyUzUAbE2MtWU
         bpXs/TL0DMqpTVFvuUKlytI5l+0eZ1sFWO0A90PSSPuYO0VKPzsixmwV/UwWaIkpcUi7
         HJuw==
X-Gm-Message-State: AMke39nQ1AZlEq7fMkzCC60m/1blbVkRnwEohJH1Uzqw5llLgRp0IGQU5yCQNTkgyfdS1g==
X-Received: by 10.28.199.206 with SMTP id x197mr3610090wmf.5.1487790531121;
        Wed, 22 Feb 2017 11:08:51 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 22 Feb 2017 20:08:49 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170222190849.qdh65xvhpsu5pao7@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] munin: CVE-2017-6188: Local file write vulnerability

Munin, at least up to 2.0.30 is prone to a local file write
vulnerability, when CGI graphs are enabled. Setting mutliple
'upper_limit' GET parameters allow overwriting any file (accessible by
the user running the cgi-process).

Upstream bug: https://github.com/munin-monitoring/munin/issues/721

MITRE has assigned CVE-2017-6188 for this issue.

Regards,
Salvatore
