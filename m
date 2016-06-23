X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1173" "Thursday" "23" "June" "2016" "19:12:18" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160623171218.GA8259@eldamar.local>" "37" "[oss-security] CVE Requests: WordPress: 4.5.3 maintenance and security release: several issues" nil nil nil "6" "2016062317:12:18" "[oss-security] CVE Requests: WordPress: 4.5.3 maintenance and security release: several issues" (number mark "U       carnil@debia Jun 23   37/1173  " thread-indent "\"[oss-security] CVE Requests: WordPress: 4.5.3 maintenance and security release: several issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12045 invoked by uid 550); 23 Jun 2016 17:12:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12026 invoked from network); 23 Jun 2016 17:12:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=n6ZkdMiO8klOp0JTxM1Di/p9OT16v0BwaV4aGtQwWpQ=;
        b=THe2+W/15mD+iDlO+7pUS+VEtoyikQaJ3QCAHN18B9k+EXoZlx2imhhDNYmsTSMS9v
         lnUN+HunJjlT3gK9nJ/SMzeycsP1dbasUsSf4lFZft7nyLdNJ+6v4vrtUQzw+zz0V1Gv
         dKgld4z1tfYaOQXMMUBxDOHDSjHfite784zn5C2phuOXt5c2O8cEwzWb95SuKwWWPE0H
         EeqiCsUp00yZ+NJDIM5eVOdffdkZRSyY2D7Nsh0RG8z7nombiOfUleaqHGWF4HUBrRqM
         kBVLqYQtoP+7X8tmjTVvLfF2y8fc18h5Y3u71SC8ZJuvxR4YmXsBtzafd5dCpCyCZh8B
         2GAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent;
        bh=n6ZkdMiO8klOp0JTxM1Di/p9OT16v0BwaV4aGtQwWpQ=;
        b=ekGbQsQdzzCF8BW8VN79JQL+tdy2D7VGEtd1wO+HfppiDlBmRgs6E71Mdu4wQrI/56
         7IkeWoW4StJ9utVycvLixmIQQka9XMGXvWiphq8dDxppIT8VAxt39taCmNYo1braTKsv
         uHvXhDOpYH2DT4k1MfI1vn1iHC6FS5N8HGXaiLaL9wac54NGUkfRdApiwAsbFnY4k7ys
         4vjhjiYAi0db9595VWyTJdF359Ac7P9NEL7SWVIuEF7hNjAPK6c/GG2k27Gt2oo+CJMV
         dHMMoxXN5473UGRgE3EYTYT5lIdEOvaLVYPZ9ip7xB3+Bp+QHfTAERINmEt+uBCD6s3W
         3MTA==
X-Gm-Message-State: ALyK8tLyB4doxHne0wDshOxXCevCso/TjXKfonEUWYcrYBhBohOs+XC2LY15+7UT0s/qXA==
X-Received: by 10.194.65.5 with SMTP id t5mr17506762wjs.35.1466701944659;
        Thu, 23 Jun 2016 10:12:24 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 23 Jun 2016 19:12:18 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160623171218.GA8259@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] CVE Requests: WordPress: 4.5.3 maintenance and security release:
 several issues

Hi

WordPress issued version 4.5.3 a maintenace and security release. The
advisory mentions several issues fixed:

https://wordpress.org/news/2016/06/wordpress-4-5-3/

WordPress versions 4.5.2 and earlier are affected by several security
issues:

 - redirect bypass in the customizer, reported by Yassine Aboukir;

 - two different XSS problems via attachment names, reported by Jouko
   Pynnönen and Divyesh Prajapati;

 - revision history information disclosure, reported independently by
   John Blackbourn from the WordPress security team and by Dan Moen from
   the Wordfence Research Team;

 - oEmbed denial of service reported by Jennifer Dodd from Automattic;

 - unauthorized category removal from a post, reported by David Herrera
   from Alley Interactive;

 - password change via stolen cookie, reported by Michael Adams from the
   WordPress security team;

 - and some less secure sanitize_file_name edge cases reported by Peter
   Westwood of the WordPress security team.

(I wrapped the advisory text in the various separate items).

Could you assign CVE identifier as needed for the above issues fixed
with the Wordpress 4.5.3 release?

Regards,
Salvatore
