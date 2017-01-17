X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2367" "Tuesday" "17" "January" "2017" "19:34:20" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170117183420.pmc5la5zsljyzh5s@eldamar.local>" "70" "[oss-security] CVE Request: php-gettext: Arbitrary code execution in select_string, ngettext and npgettext count parameter" nil nil nil "1" "2017011718:34:20" "[oss-security] CVE Request: php-gettext: Arbitrary code execution in select_string, ngettext and npgettext count parameter" (number mark "U       carnil@debia Jan 17   70/2367  " thread-indent "\"[oss-security] CVE Request: php-gettext: Arbitrary code execution in select_string, ngettext and npgettext count parameter\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26344 invoked by uid 550); 17 Jan 2017 18:34:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26318 invoked from network); 17 Jan 2017 18:34:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SyEMtNMoDIOIZxJy+SOdUIlmQq4bdlFckMGYIO1pXV4=;
        b=ZlzoxQMMXIKZxyqt5WR90fGt9pTeh/7zIwiGQMwLKFHJixt/sX4ZevFh41Q14ACWA6
         xqZhs6/uqrjtrQCwEd0T9l2A3BUGVHvaxI+6uKzpxQsbdYf5tAdsJeNhi2TSV/Q4npb6
         TXNjW2kPFnsDfp/5TTET5fDKJMLRgcpX09GHWSEbjkvw5CcUILV+AkoyhufVgOeo22+L
         eLz/s9EGUxhpUTsRvZ7kGmnk9Gb0mUiY+dUGPgwwlvw5es6K3jOkwUyYHtBqlJGue32j
         bRYqmMF9LaU1itEWecFknhy7z0PpCtdL6QWotiEhCEC9rmceEHcM0ocF/GumZU4hxvov
         6drw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=SyEMtNMoDIOIZxJy+SOdUIlmQq4bdlFckMGYIO1pXV4=;
        b=OpkqGrv5Va+ICqH+48TGA1cKPYSTqmL04cCriMlPJDCEdjqiDyU01dlqCWnrxSQoGx
         wQF5xe0fx6DK62K8vTq47xbNI4L8Hyqa2caC5tn0xvE/aR81rp8oaee0d91MP7OGifW/
         PBC5mxeVq01kEtoBm5hSauKQIb8cBDu5MRS8YjlFemtVBA+FIZt7/uI8E0Xzg4t3ufA9
         vG2ugvDm+vN6MZdIcZF/lLnv5nWT/hVth5YFP4OFzf8iV/OCx88my1ffYw/qc3d7Kaza
         +rFNgy+NPlrmMq2q6PAP3vNA8kkbQvga+U4a3d5dk792PIqN4nyRDpWWwPwvrPyPj+uR
         91Cw==
X-Gm-Message-State: AIkVDXL5CJzezSalMnFt/mp2GOSbqQt85Xs4AqX2VQqZMlhyPPbVgV1+cIi+zYv3MuWjGg==
X-Received: by 10.223.177.130 with SMTP id q2mr14454105wra.39.1484678063591;
        Tue, 17 Jan 2017 10:34:23 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 17 Jan 2017 19:34:20 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170117183420.pmc5la5zsljyzh5s@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: [oss-security] CVE Request: php-gettext: Arbitrary code execution in select_string,
 ngettext and npgettext count parameter

Hi

Could you please assign a CVE to the followign php-gettext[0] issue:

>From [1]:
> A code injection vulnerability was found in php-gettext. Evaluating
> the plural form formula in ngettext family of calls can execute
> arbitrary code if number is passed unsanitized from the untrusted
> user.

Which in Fedora was addressed by updating to 1.0.12, cf [2]. Original
report is found in [3]:
> CERT ID - VU#520504 (pending since 2015)
> Product - php-gettext
> Company - Danilo Segan
> Name - php-gettext php code execution
> Versions - <1.0.12
> Patched - 11/11/2015
> Ref: https://launchpad.net/php-gettext/trunk/1.0.12
> 
> Vulnerability - "code injection into the ngettext family of calls:
> evaluating the plural form formula can execute arbitrary code if
> number is passed unsanitized from the untrusted user."
> 
> Description -
> In 1.0.11 and lower the select_string function appears as the
> following:
> 
>   /**
>    * Detects which plural form to take
>    *
>    * @access private
>    * @param n count
>    * @return int array index of the right plural form
>    */
>   function select_string($n) {
>     $string = $this->get_plural_forms();
>     $string = str_replace('nplurals',"\$total",$string);
>     $string = str_replace("n",$n,$string);
>     $string = str_replace('plural',"\$plural",$string);
>     $total = 0;
>     $plural = 0;
>     eval("$string");
>     if ($plural >= $total) $plural = $total - 1;
>     return $plural;
>   }
> 
> The vulnerability here lies in the fact that $string is evaluated as
> PHP code. If the plural form contains an 'n', and the $n parameter
> is exposed to a malicious user, PHP code can be added to the value
> of $string before it is evaluated. For websites, this means that a
> vulnerable application could allow an attacker to run PHP code on
> your site and potentially gain control of it.
> 
> 
> The $n parameter in select_string can also be exposed through
> ngettext and npgettext as the $number parameter.
> 
> 
> The new release 1.0.12 was made available shortly after notification
> in 2015 and resolves the issue by raising an exception during
> non-numeric input to these parameters.

 [0] https://launchpad.net/php-gettext/
 [1] https://bugzilla.redhat.com/show_bug.cgi?id=1367462
 [2] https://lwn.net/Alerts/708838/
 [3] http://seclists.org/fulldisclosure/2016/Aug/76

 Regards,
 Salvatore
