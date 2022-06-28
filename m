Received: (qmail 12100 invoked by uid 550); 28 Jun 2022 14:29:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11490 invoked from network); 28 Jun 2022 14:27:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:mime-version:date:message-id:subject:to;
        bh=46fbl6wpPYmiUm0RggnHX1eMh32ZLaXrpe54C+To0uM=;
        b=ipRuSLo3HHIHTf9+6JLrpA/ZEpcd1QNxSSBkIuOTGmgbrjJazxuT9YyvG6J8MIKH6y
         Q8v5mJTAI9RhgzmRpC/KlWjVIZ4t0bZsmRMZ8ZMrxOhbrKR4LB5MvimshS69+KNcTchB
         x/ufiYm+ReTiPMeMs2U9dXp9HdpBReyRmWaDPkyWeq7AxqOAjuaK4m/eEFXuidEPbeVl
         iLRbzAswqoiPyuj7Enl408OeluNsgHRz0xHfoIpxPQeRbaAlAVW6c94zseTGg4LEEEgs
         5i5/1GIQXy+kit5NAlNGIKHUjGSMiuKWMarKobOQXcBkxwwM2sZPdv18M+NvtJVOb8SF
         HnVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:mime-version:date:message-id:subject:to;
        bh=46fbl6wpPYmiUm0RggnHX1eMh32ZLaXrpe54C+To0uM=;
        b=ylZ0q6nGtSyVWQ4HINOResEw1r5lzIuHGyKm9rgfat6+LXMdE0/YCH/xYbMo/KELat
         ay57lAG2wcbUUWA1KaoYxmiBBE2/vLAZS9IZEclvA35Kzo6ySyfiRSbK+x3MDl9TxuNg
         Pbht1NyeK9uNZFUS+SIlq/J1SSHBR/Ore5pdTOo8unfIKq5OFQM9df+cTmzPedY2nfHy
         nkC0CAy+LEzYYFGHaeFDgSsU8vOXu2Yes26ZNXUALYiHOcrgimQmKVOy1AhXMouGxs4S
         nOWiry5e7vlmf80pOWw9wkZbGaQlq2yYiTmSck81wPUAPbK1x2YHGORoHRgzcVFNMtxq
         /7lg==
X-Gm-Message-State: AJIora+tW7wLWzmJJNGUJRKz5rNIqkns21tcKMttN0ZEmCZ1pGB2lXAo
	gEGVwNIBCdSx84Bhmsh3b0FgtFiov127Lh4QfhCD67+OGwg=
X-Google-Smtp-Source: AGRyM1ukjuKpGJIS/Z09eLkFKdzrumLCbnHWHfz0j56qFNeGbJhpuUFgYVWIwR3231UOkaGdro59EpefE/k+7yp2s4E=
X-Received: by 2002:a17:90b:1e44:b0:1ec:cc44:be77 with SMTP id
 pi4-20020a17090b1e4400b001eccc44be77mr28245682pjb.34.1656426441376; Tue, 28
 Jun 2022 07:27:21 -0700 (PDT)
From: Matteo Collina <matteo.collina@gmail.com>
MIME-Version: 1.0
Date: Tue, 28 Jun 2022 07:27:20 -0700
Message-ID: <CAANuz54JHumf1epcp_U1ieWwrvupv0rZkSk--d_hsnxrgmnV4w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a289cd05e282d5c5"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, July 2022

--000000000000a289cd05e282d5c5
Content-Type: text/plain; charset="UTF-8"

On 28 June 2022 at 16:26:43, Matteo Collina (matteo.collina@gmail.com)
wrote:

The Node.js project will release new versions of all supported release
lines on or shortly after Tuesday, 5th of July, 2022
For more information see:
https://nodejs.org/en/blog/vulnerability/july-2022-security-releases/

-- 
You received this message because you are subscribed to the Google Groups
"nodejs-sec" group.
To unsubscribe from this group and stop receiving emails from it, send an
email to nodejs-sec+unsubscribe@googlegroups.com.
To view this discussion on the web visit
https://groups.google.com/d/msgid/nodejs-sec/d522e004-c08a-4add-8e28-db579c4f4a27n%40googlegroups.com
<https://groups.google.com/d/msgid/nodejs-sec/d522e004-c08a-4add-8e28-db579c4f4a27n%40googlegroups.com?utm_medium=email&utm_source=footer>
.

--000000000000a289cd05e282d5c5--
