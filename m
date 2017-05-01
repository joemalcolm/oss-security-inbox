X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8811" "Sunday" "30" "April" "2017" "20:33:54" "-0400" "Brian Wolff" "bawolff@gmail.com" "<CA+oo+DWTpgZREVqKEQZxPy+9FgFw+EVeeZtos2MyTJ+RAsNfwQ@mail.gmail.com>" "189" "Re: [oss-security] SyntaxHighlight MediaWiki extension allows injection of arbitrary Pygments options" nil nil nil "4" "2017050100:33:54" "[oss-security] SyntaxHighlight MediaWiki extension allows injection of arbitrary Pygments options" (number mark "U       bawolff@gmai Apr 30  189/8811  " thread-indent "\"Re: [oss-security] SyntaxHighlight MediaWiki extension allows injection of arbitrary Pygments options\"\n") "<68c416cf-44b4-1d43-441e-8262b0b88e82@securify.nl>" ("<68c416cf-44b4-1d43-441e-8262b0b88e82@securify.nl>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12099 invoked by uid 550); 1 May 2017 11:42:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31976 invoked from network); 1 May 2017 00:34:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=4TFBMpsqCKbKwHA/a0EN5PMe8CUnRg3aQBV6EtAJuCg=;
        b=JCva2uDeBcBDSER/O8gEmmJkF4YfnDcnQuzIEQL+U9T2XGaKOMAuLCpeWcI3kR58hy
         xDDFJVZ8L6DUJ6aCUSGmw+nL7vhsSHgG4lYnDFUv/auxrB3QOum+PB8Syb3lnP7p/DCN
         TQwgJ3Dh3GL/UMylL/JMKGYgEBRqSMyPBjndeBKrCCoA+hQH9GePKZRsso3uKT2cIIVc
         ldOCR+51Lunj0EvNpJASuXXauCh1dhThI5A7u0oAsz0bPPnA0U8Sruz//v4lqt8WGnuj
         V8wjW+lGeRD+XK/C8GMeuyQ1TAoeHZAsEVO+GOYqA2QjUIO8vAyNCF2/0nZ4ECmL1bG7
         T8dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=4TFBMpsqCKbKwHA/a0EN5PMe8CUnRg3aQBV6EtAJuCg=;
        b=ajqU6Z7dOoNN797bfW9J0q3vkmG9KWPDDOuO3en7+VUHTeMjfsGyC4WpJdhAZf3xZ8
         rTmF0l3m7lOF5gzXMOTuQ8weP1iELfC6IaiOFzEE6rkjws+bvhCCpt0fEMBLmH9oWxlk
         U6c9DPLDmxbVXiOYPrJ/MB+OODRMKqYU8tuuVe79qHczhvjKqFreT5ijUtu0udqK723m
         qLyl6zyN01LLCl3k+E5H3rKQoh0tlwHXzR0LkZxSIaWXa/MhbV9Xlsn8UaljeAHJ+ZEo
         +diy8R07LHDzlF86BzeZgqWUCRyMkpjRCVOUFQw1hlZ4rBD6qzYeuLD4MDh7WfOXHihw
         QGtA==
X-Gm-Message-State: AN3rC/5/9cf+Irj4/Dp/jGGs3EcGYD6iSquTC+4dCZ/t3lHWoxdasixG
	E3+Ptw/ZUGd5joEPqbWPGSZG1gle4XZz
X-Received: by 10.55.47.195 with SMTP id v186mr20759572qkh.215.1493598834989;
 Sun, 30 Apr 2017 17:33:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <68c416cf-44b4-1d43-441e-8262b0b88e82@securify.nl>
References: <68c416cf-44b4-1d43-441e-8262b0b88e82@securify.nl>
From: Brian Wolff <bawolff@gmail.com>
Date: Sun, 30 Apr 2017 20:33:54 -0400
Message-ID: <CA+oo+DWTpgZREVqKEQZxPy+9FgFw+EVeeZtos2MyTJ+RAsNfwQ@mail.gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a114f3f6aff1e61054e6b9326
Subject: Re: [oss-security] SyntaxHighlight MediaWiki extension allows
 injection of arbitrary Pygments options

--001a114f3f6aff1e61054e6b9326
Content-Type: text/plain; charset=UTF-8

On Saturday, April 29, 2017, Securify B.V. <lists@securify.nl> wrote:
> ------------------------------------------------------------------------
> SyntaxHighlight MediaWiki extension allows injection of arbitrary
> Pygments options
> ------------------------------------------------------------------------
> Yorick Koster, February 2017
>
> ------------------------------------------------------------------------
> Abstract
> ------------------------------------------------------------------------
> A vulnerability was found in the SyntaxHighlight MediaWiki extension.
> Using this vulnerability it is possible for an anonymous attacker to
> pass arbitrary options to the Pygments library. By specifying specially
> crafted options, it is possible for an attacker to trigger a (stored)
> Cross-Site Scripting condition. In addition, it allows the creating of
> arbitrary files containing user-controllable data. Depending on the
> server configuration, this can be used by an anonymous attacker to
> execute arbitrary PHP code.
>
> ------------------------------------------------------------------------
> See also
> ------------------------------------------------------------------------
> - CVE-2017-0372 [2]
> - T158689 [3]: Parameters injection in SyntaxHighlight results in
> multiple vulnerabilities
> - Fix REL1_28 [4]: SECURITY: Escape start argument before passing to
> pygments
> - Fix REL1_27 [5]: SECURITY: Escape start argument before passing to
> pygments
> - MediaWiki-announce [6]: Security Release: 1.28.1 / 1.27.2 / 1.23.16
> (fix not included in this release)
>
> ------------------------------------------------------------------------
> Tested versions
> ------------------------------------------------------------------------
> This issue was tested on SyntaxHighlight version 2.0 as bundled with
> MediaWiki version 1.28.0.
>
> ------------------------------------------------------------------------
> Fix
> ------------------------------------------------------------------------
> This issue was supposed to be fixed in MediaWiki version 1.28.1 and
> version 1.27.2. It appears that the fix was pushed to the git
> repository, but for some reason it was not included in the release
> packages. It is advised to apply the patch committed to Github.
>
>
https://github.com/wikimedia/mediawiki-extensions-SyntaxHighlight_GeSHi/commit/2d5a60a89fb3995b73e17df5901d6f023e41df3d
>
https://github.com/wikimedia/mediawiki-extensions-SyntaxHighlight_GeSHi/commit/a88c5e1dcbdb3e9940c6f55a6744c62a6d62710f
>
> ------------------------------------------------------------------------
> Introduction
> ------------------------------------------------------------------------
> The SyntaxHighlight [7] extension for MediaWiki [8] allows formatting of
> source code using the <syntaxhighlight> tag. Version 2.0 uses the Python
> Pygments [9] library to format the code. SyntaxHighlight is bundled with
> MediaWiki version 1.21 and later. Version 2.0 is bundled with MediaWiki
> 1.26.0 and later (other versions may or may not include this version as
> well).
>
> The <syntaxhighlight> tag supports various parameters. It was found that
> the start parameter is not validated and/or sanitized. This allows an
> attacker to pass arbitrary options to the Lexer and/or Formatter that is
> used when Pygments is invoked. By specifying specially crafted options,
> it is possible for an attacker to trigger a (stored) Cross-Site
> Scripting condition. In addition, the HTML formatter allows the creating
> of arbitrary files containing user-controllable data. Depending on the
> server configuration, this can be used by an attacker to execute
> arbitrary PHP code.
>
> ------------------------------------------------------------------------
> Details
> ------------------------------------------------------------------------
> The SyntaxHighlight extension utilizes Pygments to format source code.
> Pygments is a Python library, a copy is provided with the extension. In
> order to use Pygments, the extension invokes it using Symfony's [10]
> ProcessBuilder [11] component. This component performs escaping of
> command line arguments to prevent command injection.
>
> SyntaxHighlight_GeSHi.class.php:
>
> $optionPairs = array();
> foreach ( $options as $k => $v ) {
>         $optionPairs[] = "{$k}={$v}";
> }
> $builder = new ProcessBuilder();
> $builder->setPrefix( $wgPygmentizePath );
> $process = $builder
>         ->add( '-l' )->add( $lexer )
>         ->add( '-f' )->add( 'html' )
>         ->add( '-O' )->add( implode( ',', $optionPairs ) )
>         ->getProcess();
>
> $process->setInput( $code );
> $process->run();
>
> The used Lexer is specified through the lang parameter, the Formatter is
> always set to the HtmlFormatter. Additional options for the Lexer and/or
> Formatter are provided using the -O command line argument. These options
> can be controlled by the parameters that are supported by the
> <syntaxhighlight> tag. Each option is a key value pair, the options are
> comma separated.
>
> It was found that no input validation and/or sanitization is done on the
> start parameter. This parameter is used to define the first line number
> of a code block. If line numbers are enabled, the numbering will start
> with the value provided in the start parameter. Normally, this value
> should only contain numbers. Due to the lack of validation/sanitization,
> it can be set to any value.
>
> SyntaxHighlight_GeSHi.class.php:
>
> // Starting line number
> if ( isset( $args['start'] ) ) {
>         $options['linenostart'] = $args['start'];
> }
>
> Since Lexer/Formatter options are comma separated, it is possible for an
> attacker to provide arbitrary options when invoking Pygments. Depending
> on the options supported by the Lexer or Formatter, this allows the
> attacker to perform various types of attacks. For example it is possible
> for an attacker to trigger a (stored) Cross-Site Scripting condition by
> passing a specially crafted prestyles option to the HTML Formatter.
>
> <syntaxhighlight lang="java"
start='0,prestyles="&gt;&lt;script&gt;alert(document.cookie)&lt;/script&gt;'>
>         string foo="bar";
> </syntaxhighlight>
>
>
> When the option full is passed to the HTML Formatter, it is possible to
> specify a local CSS file using the cssfile option. If the CSS file does
> not exist it will be created - provided that Pygments has write
> privileges on the provided path. This CSS file contains the styles that
> are used for formatting the source code. Providing additional options,
> it is possible to control parts of the CSS. One such option is the
> classprefix option.
>
> Combining these options can result in execution of arbitrary PHP code,
> provided that a writeable folder exists within the webserver's document
> root that allows the execution of PHP files. The proof of concept below
> will try to create a PHP file name foo.php in the images folder located
> within the document root.
>
> <syntaxhighlight lang='java'
start='0,full=1,title=,cssfile=images/foo.php,classprefix=&lt;?php
> phpinfo();exit; ?&gt;'>
> </syntaxhighlight>
>
> Unless the Wiki is configured as private, it is possible to exploit this
> issue without logging into the Wiki. If the Wiki is set to private, an
> account with read access is required to exploit this vulnerability.
> ------------------------------------------------------------------------
> References
> ------------------------------------------------------------------------
> [1]
https://www.securify.nl/advisory/SFY20170201/syntaxhighlight_mediawiki_extension_allows_injection_of_arbitrary_pygments_options.html
> [2] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-0372
> [3] https://phabricator.wikimedia.org/T158689
> [4]
https://github.com/wikimedia/mediawiki-extensions-SyntaxHighlight_GeSHi/commit/2d5a60a89fb3995b73e17df5901d6f023e41df3d
> [5]
https://github.com/wikimedia/mediawiki-extensions-SyntaxHighlight_GeSHi/commit/a88c5e1dcbdb3e9940c6f55a6744c62a6d62710f
> [6]
https://lists.wikimedia.org/pipermail/mediawiki-announce/2017-April/000207.html
> [7] https://www.mediawiki.org/wiki/Extension:SyntaxHighlight
> [8] https://www.mediawiki.org
> [9] http://pygments.org/
> [10] https://symfony.com/
> [11]
http://api.symfony.com/3.2/Symfony/Component/Process/ProcessBuilder.html
>

Hi oss-security,

On behalf of MediaWiki, sorry about the screw up with the version of
SyntaxHighlight in the tarball release of MediaWiki 1.27.2/1.28.1. We have
rectified this by releasing MediaWiki 1.27.3/1.28.2 which includes a fixed
version of SyntaxHighlight. For more information see
https://lists.wikimedia.org/pipermail/mediawiki-announce/2017-April/000209.html

Thanks,
Brian

--001a114f3f6aff1e61054e6b9326--
