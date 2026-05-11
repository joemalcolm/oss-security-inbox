Received: (qmail 23707 invoked by uid 550); 11 May 2026 16:04:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11779 invoked from network); 11 May 2026 16:03:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gr-oss-io.20251104.gappssmtp.com; s=20251104; t=1778515403; x=1779120203; darn=lists.openwall.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0du0vuJn5TmHj82/Nkk+GQJNutUoVws9Ezdy64jyrCI=;
        b=USRYyn6DcSc8Esc9NntGb4yYW7xU/DazpiBlWQ+2m++dwqnAnlh+XU5IZpuYrhAK6i
         nP5MTUn6VD9cYcZEd52SSRlmPhQgCS2NaoZmdrOxzroY1sfFX7llX/BarGuVigRSLk2q
         PEPTTB7lhoi3EW9dTGb1TCet4VpyFGo9tEzIx7SIqHVFAlzUILX+geVe1Cw4GKJlFScJ
         AB+kIFA3Hf/G+5TFOi0yxVXcLWDovf+2kt4FYhQ5P2shXOnagZGejifxa3QornwvMxSC
         tVTcKzvaxJcsbjnUbs5RVAnlQ3o5AUUPE/LTK4tfDJTQLhuwDpR0mG5okfqvfTdfSo43
         3OIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778515403; x=1779120203;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0du0vuJn5TmHj82/Nkk+GQJNutUoVws9Ezdy64jyrCI=;
        b=Ju9MPHCPMO94y3QwBW0g0MUksxLi7E3GZxyYxtnIh9Pm/Ogk3pne+ty8p7vPR+GED5
         nFvVto0lhZkN024MK1yjpqyde8IWHnB9BXIJImoQ7CzgVJ4JxD/54iG0OwnxlE06IGPH
         LtEGCWz0JI5pFOqzSac8cAVZ1W5cvsYYAAi26hOQsCV9+5XZfe/yiaM/Dg2WxoM/xqiE
         iiXM5hFLgiMwh2BbFfWl823/Dwt8feyNgUTzjjjjwSNrqnNF6KSRfKgBqtQ48wFMgU63
         242wbxmnzT3q9TPYSyYtYOVIQKeVwbdje/YrQivDKH8dS94aJMBOfeKRQmQogoYSil2F
         J8+Q==
X-Gm-Message-State: AOJu0YwTmx30of4aaugsOczZ1VX9N2G1eMTwpOlF7YihUpacgky6aCBO
	wor3RYX2JVfsvQRUDefEKG7eUpUPmF1X4VFC7xnbObtdMBsDe54LULBZK6JScoMd4wjGjm+ZUUj
	NQOmSIag=
X-Gm-Gg: Acq92OFcj2Mg5k1BzSUnIKHoEs8wd34fVtgCN5NqOTrO2HTPgOXDSuzsRtNw1zDYVqk
	T9Iq2eF/fVVNn4RdmVOO5SnFwWIMRpicx8RQsqSVuoOJ9kNdyOINUzTLJPuFmIc2uDewtlUr1Qk
	6nL/awl85lPvdgMZWMf1DUjwECdE6HpEsu/LzHZQffrIl7bAvFMQRTa8QOMVZ2oyEM6qZtCmpzA
	GEcw7bbuLCR6WOiekM9+akQ4uY/xmpnYhF3+HLq5PQ92DRRvbs2Lq0B1yGQJuaNZ8osQNgddKwG
	y69qixcGXg7PaAMrlSPgoxS3ZUpmnyglhv8zrMKv4HSSlxHHbbd1teYwLoJrnvWyYMksTTeu4zS
	44dC/5/FX6SlyjJ8u/GxoSSHhJMYRvrVDA5x+a68hX3HCLeHN/t7o6/lQSTcdJ5ONC0sQ5fde6Z
	FOygunR40SOBYQ1hgJy9tXazf59f0r9CTNHJG5YUWadyhemAgNbLvJjZf+jax2zkC8ohl5YtXjH
	AfnbRmTra+0N348QcJU
X-Received: by 2002:a17:903:1b28:b0:2ba:881f:6192 with SMTP id d9443c01a7336-2baf0dd629cmr154470955ad.22.1778515402887;
        Mon, 11 May 2026 09:03:22 -0700 (PDT)
Message-ID: <0306771b-a751-40db-8ec5-9bc3925efeb3@gr-oss.io>
Date: Mon, 11 May 2026 09:03:20 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Jay Faulkner <jay@gr-oss.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] [OSSA-2026-012] Ironic: Remote Code Execution when Anaconda driver
 enabled (CVE-2026-44916)

=====================================================================================
OSSA-2026-012: Remote Code Execution in Ironic conductor when Anaconda 
driver enabled
=====================================================================================

:Date: May 11, 2026
:CVE: CVE-2026-44916


Affects
~~~~~~~
- Ironic: >=17.0.0 <26.1.7, >=27.0.0 <29.0.6, >=30.0.0 <32.0.2, >=33.0.0 
<35.0.2


Description
~~~~~~~~~~~
Dmitry Tantsur (Red Hat) and Tuomo Tanskanen (Ericsson Software 
Technology) from the Metal3.io Security Team reported a vulnerability in 
Ironic's anaconda deploy interface. Users who can set 
``node.instance_info['ks_template']`` can achieve remove code execution 
on the ironic-conductor process, as the template is rendered without 
sandboxing.
In the default configuration, Ironic is not vulnerable to this issue. 
However, operators who have enabled the anaconda deploy interface by 
adding it to ``[conductor]/enabled_deploy_interfaces`` and have 
untrusted users with access to modify ``node.instance_info`` are at risk.



Patches
~~~~~~~
- https://review.opendev.org/c/openstack/ironic/+/987778 
(2023.1/antelope (unmaintained))
- https://review.opendev.org/c/openstack/ironic/+/987777 (2024.1/caracal 
(unmaintained))
- https://review.opendev.org/c/openstack/ironic/+/987776 (2025.1/epoxy)
- https://review.opendev.org/c/openstack/ironic/+/987775 (2025.2/flamingo)
- https://review.opendev.org/c/openstack/ironic/+/987774 (2026.1/gazpacho)
- https://review.opendev.org/c/openstack/ironic/+/987922 (Bugfix/31.0)
- https://review.opendev.org/c/openstack/ironic/+/987921 (Bugfix/33.0)
- https://review.opendev.org/c/openstack/ironic/+/987920 (Bugfix/34.0)


Credits
~~~~~~~
- Dmitry Tantsur from Red Hat
- Tuomo Tanskanen from Ericsson Software Technology


References
~~~~~~~~~~
- https://bugs.launchpad.net/ironic/+bug/2148307
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-44916


Notes
~~~~~
- Releases 2024.1 (caracal) and 2023.1 (antelope) are unmaintained.
   Patches are provided as a courtesy. Releases 2023.2 (bobcat) and
   2024.2 (dalmation) are end of life and have not had patches provided.
   See https://releases.openstack.org for more information on supported
   releases.
- Ironic bugfix branch patches will be available in git for interested
   operators. We will not perform an additional release from these
   branches.


