X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1778" "Thursday" "23" "April" "2015" "07:44:12" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150423054412.GA6935@lorien.valinor.li>" "45" "Re: [oss-security] CVE request: Module::Signature before 0.75 - multiple vulnerabilities" nil nil nil "4" "2015042305:44:12" "[oss-security] CVE request: Module::Signature before 0.75 - multiple vulnerabilities" (number mark "        carnil@debia Apr 23   45/1778  " thread-indent "\"Re: [oss-security] CVE request: Module::Signature before 0.75 - multiple vulnerabilities\"\n") "<55236279.8060709@nixnuts.net>" ("<55236279.8060709@nixnuts.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9731 invoked by uid 550); 23 Apr 2015 05:44:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9713 invoked from network); 23 Apr 2015 05:44:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=r6J3uIO+BsxghXQxwyacZNkmg7paVdj15XdZ/anb8dg=;
        b=g7e+PsLF73GK0MmxjSql4zT0e2u5jpPpPEWGmeYUX19pd4rzqKNdpes4jFAqsDEr/2
         x61phSW3tfn7kcJbIxyE5YUggP1rM/iGmUWKzi9tKSdiaZsy8ILQFENJ6daAO4W+TT8b
         NPks/e2U7dUvdus8mpr0LpOkw2h+jKdHc8ecgYp6lLY1LkyO70OWlxvOrPZOV8G0jsoq
         KjPJ8pBwoHIS00VsZ84rmcLmXmlKDXMlqRRuhC1h9OGrViJ6/KrL313rIEa/BGAZZzXj
         YDADmU9XtGbZxgcvPAh6I50BcEbeYUc8z6MBBzCY6mqtt79PTAOjnSkfqfN/ChdTzcuV
         /DCw==
X-Received: by 10.194.157.39 with SMTP id wj7mr1990906wjb.57.1429767854869;
        Wed, 22 Apr 2015 22:44:14 -0700 (PDT)
Message-ID: <20150423054412.GA6935@lorien.valinor.li>
References: <55236279.8060709@nixnuts.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55236279.8060709@nixnuts.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Thu, 23 Apr 2015 07:44:12 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE request: Module::Signature before 0.75 -
 multiple vulnerabilities
To: oss-security@lists.openwall.com

Hi,

On Mon, Apr 06, 2015 at 11:52:09PM -0500, John Lightsey wrote:
> Hi there,
> 
> A new version of Module::Signature, was released to fix multiple
> vulnerabilities. Module::Signature is used by most CPAN clients to
> validate PAUSE GPG signature files on the CPAN mirrors and GPG signature
> files inside individual Perl module tarballs.
> 
> The changelog for the 0.75 version is here:
> 
> https://metacpan.org/changes/distribution/Module-Signature
> 
> This commit fixes three flaws:
> 
> https://github.com/audreyt/module-signature/commit/8a9164596fa5952d4fbcde5aa1c7d1c7bc85372f
> 
> - Module::Signature could be tricked into interpreting the unsigned
> portion of a SIGNATURE file as the signed portion due to faulty parsing
> of the PGP signature boundaries.
> 
> - When verifying the contents of a CPAN module, Module::Signature
> ignored some files in the extracted tarball that were not listed in the
> signature file. This included some files in the t/ directory that would
> execute automatically during "make test"
> 
> - When generating checksums from the signed manifest, Module::Signature
> used two argument open() calls to read the files. This allowed embedding
> arbitrary shell commands into the SIGNATURE file that would execute
> during the signature verification process.
> 
> This commit fixes one more flaw:
> 
> https://github.com/audreyt/module-signature/commit/c41e8885b862b9fce2719449bc9336f0bea658ef
> 
> - Several modules were loaded at runtime inside the extracted module
> directory. Modules like Text::Diff are not guaranteed to be available on
> all platforms and could be added to a malicious module so that they
> would load from the '.' path in @INC.

Adding explicitly CVE assignment team from MITRE into the loop.

Regards,
Salvatore
