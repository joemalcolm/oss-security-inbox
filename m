X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1095" "Thursday" "5" "May" "2016" "16:50:31" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160505145031.GA22827@eldamar.local>" "27" "[oss-security] CVE Request: PHP: several issues fixed with 7.0.6, 5.6.21 and 5.5.35" nil nil nil "5" "2016050514:50:31" "[oss-security] CVE Request: PHP: several issues fixed with 7.0.6, 5.6.21 and 5.5.35" (number mark "U       carnil@debia May  5   27/1095  " thread-indent "\"[oss-security] CVE Request: PHP: several issues fixed with 7.0.6, 5.6.21 and 5.5.35\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11968 invoked by uid 550); 5 May 2016 14:50:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11945 invoked from network); 5 May 2016 14:50:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=irurjvBs70f6rWEuF6dqXBuT9hCdTP3APeXZNGZBKXo=;
        b=Sh5uYQzhewMg88V351oAchkBHk5azClmCR6Njy9bbT63CEIrncGU2c6N/EMTzlLRUD
         TcBT/mCb/EF/EY7vvbiradQfVKmEkNxMQveqCcVlOj7nBukw3b6g43nNM0w3eEPkFWsN
         RmPpC56krUPYnlra73HfPSdCnbpqMwtNjMNsSPJ1DxGPmZaCqg620tueWrIgJBG11OWM
         hrOkuzR7O0bP5Sn00kIQhDSkOxuJb6WTOH7IZPbz+hy0eGCSnNzmDvz18/BayaX5JFPS
         uh2k1WoBv7oEhONZMUroBPfRoGHYEY9GOXRJe2dsFDyTcX4VTBYx6+Hr5Dgs5hYYVN7e
         gaEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=irurjvBs70f6rWEuF6dqXBuT9hCdTP3APeXZNGZBKXo=;
        b=d3k+09RWYpPwpAYkwhum1c/oxzkPogh+SjdfZ7M3CXRdvchiwW7vX20vDvwoYb18/h
         X1q2aqLkjhQOCJ5H/FwuLZmlk81YVkDv/hmSPv2weUO5+Hw4atF5cFS+rRSpy5kc9lLW
         Q6hgEu9ry60QHt5+TLPZoM7JRzV4zTQOevb8jirUAa/JNF1BfaOwM62gU4bafpwLjaN+
         xxNprJsJ41oxnUnDIwgDNm3u3hSIWsqconOAfysa/RgynWnNXZxTfxyUjfw1KkXrJ+Eu
         w3J9qX7j3ngWyFjbvre9PsspMqjXh6ww7QkwU1y51IIIZVKun01d2lYOAR06huGlBWCc
         tQ9A==
X-Gm-Message-State: AOPr4FX138NO1FPhzqzQevjBABFfFTD1yvJnYpQ13aaO/Jz1AizAFeTuVeZ9yzL8gqZxYw==
X-Received: by 10.28.27.142 with SMTP id b136mr3926173wmb.7.1462459834341;
        Thu, 05 May 2016 07:50:34 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 5 May 2016 16:50:31 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160505145031.GA22827@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] CVE Request: PHP: several issues fixed with 7.0.6, 5.6.21 and 5.5.35

Hi,

With the 7.0.6, 5.6.21 and 5.5.35 PHP releases several issues were
fixed, of those at least those four were as well commited to 5.5.35
(only in security-fixes mode) and might warrant a CVE:

1/ bcpowmod accepts negative scale and corrupts _one_ definition
   - https://bugs.php.net/bug.php?id=72093
   - https://git.php.net/?p=php-src.git;a=commit;h=d650063a0457aec56364e4005a636dc6c401f9cd

2/ xml_parse_into_struct segmentation fault
   - https://bugs.php.net/bug.php?id=72099
   - https://git.php.net/?p=php-src.git;a=commit;h=dccda88f27a084bcbbb30198ace12b4e7ae961cc

3/ Out-of-bounds reads in zif_grapheme_stripos with negative offset
   - https://bugs.php.net/bug.php?id=72061
   - https://git.php.net/?p=php-src.git;a=commit;h=fd9689745c44341b1bd6af4756f324be8abba2fb

4/ Out of bounds heap read access in exif header processing
   - https://bugs.php.net/bug.php?id=72094
   - https://git.php.net/?p=php-src.git;a=commit;h=082aecfc3a753ad03be82cf14f03ac065723ec92

I merely only have checked the php changelogs, but cannot give
background on the impact of those.

Regards,
Salvatore
