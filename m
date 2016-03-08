X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3350" "Monday" "7" "March" "2016" "18:31:22" "-0700" "distributed weaknessfiling" "distributedweaknessfiling@gmail.com" "<CAF50zSoHrRWRy5aZ0GBG8RYwjzs4y1tWw_PfvEJaa-n7f+O+FA@mail.gmail.com>" "71" "[oss-security] Distributed Weakness Filing (DWF) System" "^Date:" nil nil "3" "2016030801:31:22" "[oss-security] Distributed Weakness Filing (DWF) System" (number mark "U       distributedw Mar  7   71/3350  " thread-indent "\"[oss-security] Distributed Weakness Filing (DWF) System\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19555 invoked by uid 550); 8 Mar 2016 01:33:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18096 invoked from network); 8 Mar 2016 01:31:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=xzLnYNbTn8SASvqR3Mvnr1uIZMVNs7edOQ0yiTnrbCg=;
        b=UKyIz/i67dmurRBoNUCvxoBewXG4vtrIxYAbp4oh3kaG5/W/vj02debfmqEOlUVY3G
         hOJYe6CGEAekh8FBFOD/6vQO4EbQuTSeUg2Cvm0kyjiYwHHnGFGxl8NtOngmwZrHMlR/
         ae41CMMcMGpccIjfUG3e7oWxV/RxxGeTWM9dqnVVkRh/TphwCs2RwqRM66sHMCwu0Ay8
         SzFZhAGLVEujW5O6hJWO2oD5dAMZ1Sa1N4w3OnxdlsvwoRyQfSBy8FWtM6/nKLGn8sj0
         EK9kuV50u0iCgQXgIQZ/v7cKZaeNbrtmSVCNh9tQZDgGRMNuOIgXKNpD6sh6mX+Hhzfo
         o0lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=xzLnYNbTn8SASvqR3Mvnr1uIZMVNs7edOQ0yiTnrbCg=;
        b=HZYkH5cm6k9qOFVEerm8zcRtJ4cGxEd67cA8u4OzFUDN4Kbxp5f2hWASr3zcJhMV++
         p0xxnzsxKlmCobY2tB8xm0aK4EJCOb9PpO7SKSg5Idy4yUYaOzzpvzU5YU7sYZ3o8cxY
         Rc6ke9LB2Gbe2u6VwL+aLWXYUu6CDQI64csN9661g+Xp3te3Gs/WKhq+uZB9YqKGXBQt
         njEL2XRiW/nor0BHfkoUEv6koPhvvtgrHnqS5acYCAdiCnoLT18AH1fhTpR4bxUIyFku
         qINvFI71wvpyfMCh30xQnf3ePtCxOw+1BR1ifI3p4ce4mjbUatCwu+N1z26R8tWyt1Fm
         O6Ow==
X-Gm-Message-State: AD7BkJJ+p2PTSs/+mBdi6zWhDm/opDuRbzgrrwH7wQGKaGDbbjHbv7EibPiT5KtJ3V3ltgZEWgCTRK7tQ+g5Dg==
MIME-Version: 1.0
X-Received: by 10.50.111.8 with SMTP id ie8mr14847065igb.29.1457400682076;
 Mon, 07 Mar 2016 17:31:22 -0800 (PST)
Message-ID: <CAF50zSoHrRWRy5aZ0GBG8RYwjzs4y1tWw_PfvEJaa-n7f+O+FA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0149c028f363e4052d7f8942
Date: Mon, 7 Mar 2016 18:31:22 -0700
From: distributed weaknessfiling <distributedweaknessfiling@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Distributed Weakness Filing (DWF) System
To: oss-security@lists.openwall.com

--089e0149c028f363e4052d7f8942
Content-Type: text/plain; charset=UTF-8

So in the interests of full disclosure and transparency I (Kurt Seifried)
am writing this email as an individual and member of the DWF System, and
not as an employee of Red Hat. Please note that although I have a day job
at Red Hat I also (like many information security people) work on other
projects in my personal life, either because they are not work related, or
because it's simply not appropriate to work on the project as part of my
day job (in this case it's less about Red Hat, and more about the fact that
as a Red Hat Employee I am a member of the CVE Editorial Board).

I have increasingly noticed problems with Mitre's handling of the CVE
database. This has come to a head now that I have multiple, confirmed,
public reports of security researchers being unable to get CVE numbers
assigned to them in a timely manner, if at all. As such the solution is
simple:

We need a distributed, scale out method for assigning vulnerability
identifiers that is as compatible with the existing CVE system as possible.
Not just in terms of format but in terms of process and usage. As such I
took on the task, creating the DWF system and getting a number of other
people involved (Larry Cashdollar, Zachary Wikholm, Josh Bressers, etc.).
My goal is to create a simple system for assigning vulnerability
identifiers that relies on the community and not a single entity or
organization. Additionally I want to reduce the time and effort needed to
get identifiers, something best achieved by pushing assigning out to as
close to the vulnerability discover/handling as possible.

With this in mind we have created a system that has several main components:

1) Documentation and Guidelines for how this whole thing works (
https://github.com/distributedweaknessfiling/DWF-Documentation/)

2) DWF Numbering authorities that can self assign DWF numbers, or assign on
behalf of people that need DWF numbers but are not a numbering authority (
https://github.com/distributedweaknessfiling/DNA-Registry)

3) A database of DWF entries (
https://github.com/distributedweaknessfiling/DWF-Database)

4) A database of artifacts, files and related files for DWF entries (so
that when websites disappear the required content is hopefully still
available) (
https://github.com/distributedweaknessfiling/DWF-Database-Artifacts)

There are 4 primary ways to get a DWF identifier:

1) If you already have a CVE identifier you can map it directly to DWF,
e.g. CVE-2000-1234 maps directly to DWF-2000-1234.

2) If you are a DWF Numbering Authority (DNA) (
https://github.com/distributedweaknessfiling/DNA-Registry) you can self
assign a DWF to the issue(s).

3) You can request a DWF from a DNA, this is ideal if the DNA is associated
with the flawed software, or the DNA will assist in the handling of the
security vulnerability.

4) You can request a DWF directly either via PULL request in GitHUB to the
DWF Database (https://github.com/distributedweaknessfiling/DWF-Database) or
by emailing us at distributedweaknessfiling@gmail.com.
Please note that the DWF would be happy to work with any and all entities
(including Mitre!) with respect to making DWF better, or helping integrate
the efforts of others.

https://distributedweaknessfiling.org

-Kurt Seifried

--089e0149c028f363e4052d7f8942--
