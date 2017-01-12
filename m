X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3513" "Thursday" "12" "January" "2017" "13:24:54" "+0100" "Ailin Nemui" "ailin.nemui@gmail.com" "<1484223894.26049.11.camel@gmail.com>" "127" "[oss-security] CVE Request: Irssi out of bounds read in format string" nil nil nil "1" "2017011212:24:54" "[oss-security] CVE Request: Irssi out of bounds read in format string" (number mark "U       ailin.nemui@ Jan 12  127/3513  " thread-indent "\"[oss-security] CVE Request: Irssi out of bounds read in format string\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21685 invoked by uid 550); 12 Jan 2017 14:35:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10116 invoked from network); 12 Jan 2017 12:25:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=/9YdKNkH9rl/jdVrp8XUf0yLB2pXcZtAfbLE525gooA=;
        b=Cgm7/m6PaFeDLTn4w4tUHaacR/0M7VMClzQRQRykIs7+SK1N1zYkKIMUDNHAlC7DME
         uFIN6umPJPKfS0+JecvjUKBPTMZAVl6DC3nEInYpte3eFPieTLaeHL1KTflEEPLofz8I
         Aw+kfDMYdN7dTk/q5vXLsRFFEWJMG3sB1rA2CiOBZ98PC4cSI2JzP04kNYrIJ8kSowae
         pV89T82xaYBQJxdO6MJaxcz58VQvKCiPfpgzxsl+gpLyNsWJRJoHgG6Fn4MFVrda9Doz
         8zkbN41HR/PKry0ZElqq1g0BFtLha87ZBhjx3OuqZSvXNFgMp/NSM/FhaDdzf6Kwe8/O
         pfAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=/9YdKNkH9rl/jdVrp8XUf0yLB2pXcZtAfbLE525gooA=;
        b=Jk2yvc+TrCfwZ3gDmUU92tMUB32/JFfEhkMY0QgvH6Cx3SlAOCEmULi5RMZ4cXVdK3
         zvFY1fdGl3dbPCogjEEq2cYvbjkEQ/aolIRyqtCDUpOwQmGV4682pKYb7UBgOmDNBXUe
         4CP/dXLjdEXR7DemeZVJc1QLzDOyvRROu6k9jwHfk8YBQwQO2GaqIlKOZVp7CmKDd+mT
         Ixe8WE+HZtypD85HdU8e/YjsnPIHAwbEimxTF58UkJYmL92Jop7l5k+0DOe2WElup+Ta
         RsZDJzBR5zKi4jPB3hUpNS6yao4S/oGEY7m7sE6RJNUr4T/D+ZLXB9aembczkXPaNZJU
         g1+A==
X-Gm-Message-State: AIkVDXKN0PuUBC8wAAWWt4YEbq6GCAIHJWTOE4JkHyeE47FteLcA5nIJYFuZfJ754CK6OQ==
X-Received: by 10.223.130.204 with SMTP id 70mr7106252wrc.128.1484223896489;
        Thu, 12 Jan 2017 04:24:56 -0800 (PST)
Message-ID: <1484223894.26049.11.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security@lists.openwall.com
Date: Thu, 12 Jan 2017 13:24:54 +0100
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE Request: Irssi out of bounds read in format string

Hi,

can you please check whether the following Irssi issue needs a CVE

- Printing the value %[ leads to oob read

This has been reported to the Irssi project by Hanno Böck and is
already fixed as part of the last CVE request, however I failed to
include this issue in the initial report. Hanno has blogged about this
at [1] and linked it to the other issue which we credited him for (but
it is in fact a separate issue).

Thanks,

[1] https://blog.fuzzing-project.org/55-Fuzzing-Irssi-with-Perl-Scripts.html


On Thu, 2017-01-05 at 15:45 +0100, Ailin Nemui wrote:
> Dear oss-security List,
> 
> Please provide some CVEs for the following issues.
> 
> Thanks,
> 
> 
> Multiple vulnerabilities in Irssi [1]
> =====================================
> 
> 
> Description
> -----------
> 
> Four vulnerabilities have been located in Irssi.
> 
> (a) A NULL pointer dereference in the nickcmp function found by Joseph
>     Bisch. (CWE-690)
> 
> (b) Use after free when receiving invalid nick message (Issue #466, CWE-146)
> 
> (c) Out of bounds read in certain incomplete control codes found by
>     Joseph Bisch. (CWE-126)
> 
> (d) Out of bounds read in certain incomplete character sequences found
>     by Hanno Böck and independently by J. Bisch. (CWE-126)
> 
> 
> Impact
> ------
> 
> These issues may result in denial of service (remote crash).
> 
> 
> Affected versions
> -----------------
> 
> (a) All Irssi versions that we observed
> (b) All Irssi versions that we observed
> (c) Irssi 0.8.17 and later
> (d) Irssi 0.8.18 and later
> 
> 
> Fixed in
> --------
> 
> Irssi 0.8.21, Irssi 1.0.0
> 
> 
> Recommended action
> ------------------
> 
> Upgrade to Irssi 0.8.21. Irssi 0.8.21 is a maintenance release
> without any new features.
> 
> After installing the updated packages, one can issue the /upgrade
> command to load the new binary. TLS connections will require
> /reconnect.
> 
> 
> A Note to Distributors
> ----------------------
> 
> First of all, thanks to every maintainer for their awesome job in
> packaging Irssi and backporting security fixes.
> 
> When we had to release a security advisory last year with Irssi
> 0.8.20, we noticed there was a huge confusion amongst Ubuntu users
> about whether their Irssi version was safe to use.
> 
> Since all our releases 0.8.19, 0.8.20 and 0.8.21 have been bug
> fix only, we think distributions should just ship the release.
> 
> But if the security fixes only are backported on top of an old
> version, we would like to urge distributions to consider indicating
> this in a way that is visible inside Irssi. One way to do this would
> be to manually overwrite the PACKAGE_VERSION and marking your package
> as patched. This can be done for example like this:
> 
>   ./configure PACKAGE_VERSION=0.8.17-sa201701
> 
> 
> You can then check the version from inside Irssi with /eval echo $J
> 
> As an added benefit over relying on dpkg, this will also correctly
> report whether you had /upgrade done or not. We are looking for a ways
> to make this easier to handle for both packagers and us, so if you
> have a good idea on this matter please speak forth.
> 
> 
> Mitigating facts
> ----------------
> 
> (a) requires control over the ircd
> 
> (b), (d) require control over the ircd or otherwise can be triggered /
>     avoided by the user themselves
> 
> 
> Patch
> -----
> 
> https://github.com/irssi/irssi/commit/6c6c42e3d1b49d90aacc0b67f8540471cae02a1d
> 
> 
> References
> ----------
> 
> [1] https://irssi.org/security/irssi_sa_2017_01.txt
