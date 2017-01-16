X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2112" "Monday" "16" "January" "2017" "21:16:21" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170116201621.h7ywb7fa6t72jcpc@eldamar.local>" "50" "[oss-security] CVE Request: Imagemagick: various flaws: memory corruption, out-of-bounds writes, memory leaks, double-frees, off-by-one errors" "^Cc:" nil nil "1" "2017011620:16:21" "[oss-security] CVE Request: Imagemagick: various flaws: memory corruption, out-of-bounds writes, memory leaks, double-frees, off-by-one errors" (number mark "        carnil@debia Jan 16   50/2112  " thread-indent "\"[oss-security] CVE Request: Imagemagick: various flaws: memory corruption, out-of-bounds writes, memory leaks, double-frees, off-by-one errors\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13912 invoked by uid 550); 16 Jan 2017 20:16:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13887 invoked from network); 16 Jan 2017 20:16:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2MYHf74HgimdaJ1b8DdTqTguW8LSjiC2p5oqoxopN1M=;
        b=IOdIC0UF810KbhtRMfhq62he1BUvpyPptkTiIIo+K6gvDQsYl0Ww+cwtaSFA8bgiZq
         CaU93p4y3JK9UliLrBKxnNF0Fj91ON6B7HqIaOkoFFWX9IqyT1PLx+Unq9gcE17LpY1e
         f9srxU0eXnLDZOjuvkKqIMqnbqlRBTsOy83r8O50Rqp5MlWrRB48R+12HG3YgzVKvb+o
         OnEpP4HOgHY7KYPMRzUOjy4YW8y6QGdH0BhEO+d6xUBS/skD2+ewq5bgt+8++ayc2aWL
         0Snbz9KvjalhWooqAs2ejZM3hEiOgKFRPWb0WIZB4WM/UodhDTOoET7gLe1w2FKKEX29
         9kWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=2MYHf74HgimdaJ1b8DdTqTguW8LSjiC2p5oqoxopN1M=;
        b=Fl4/9rHKJNdp8ejjl32SlDRjZxJbUO2Hq6sPPT3mEvj8hGjk1DbA4qHeXaL4D28zX1
         wibIS9IIsHuFtg4t77a23sJ0vSTR6fTsU8kIFfMc/KU5gT8FMwSkr1/5W8IcLT7hmp0P
         apCTfSM3ADQ4PUwiPDaSILR4GoE5nG361XC9Rizp12uva5O8smPFTk1T9A6ItDCX1i9W
         lsIEyJGi0ExoxYt7wy6+EbFYBFC4S7dAbL0vEz+2hxoj98uECOHZNxGQkf5Q9aYdFDV9
         kA/ZaW0h3ZN2bgvky1O8WWbV/3rMzfD5/LySbO5h6RmX5xBZZOOe45trDVBoxbRkfphM
         8Kiw==
X-Gm-Message-State: AIkVDXJuieTM9r6a8iTQowlJS2rhV56KcqA7L29CC2dsTKP+QwMnLfGC9UyOtJmPGj1RYQ==
X-Received: by 10.28.25.134 with SMTP id 128mr12615554wmz.37.1484597783959;
        Mon, 16 Jan 2017 12:16:23 -0800 (PST)
Message-ID: <20170116201621.h7ywb7fa6t72jcpc@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Cc: Bastien =?iso-8859-1?Q?ROUCARI=C8S?= <roucaries.bastien+debian@gmail.com>
Date: Mon, 16 Jan 2017 21:16:21 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: Imagemagick: various flaws: memory corruption,
 out-of-bounds writes, memory leaks, double-frees, off-by-one errors
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

The Debian package maintainer for ImageMagick reported several flaws
in the Debian bugtracker, which might warrant an identifier. It is
planned to fix those at least for the unstable distribution. I'm
listing those with the given references by Bastien. Please include him
in case of questions needed.

- coders/ipl.c: "ipl file missing malloc check"
Debian Bug: https://bugs.debian.org/851485
Fixed by: https://github.com/ImageMagick/ImageMagick/commit/97566cf2806c0a5a86e884c96831a0c3b1ec6c20

- coders/wpg.c: off-by-one error
Debian Bug: https://bugs.debian.org/851483
Fixed by: https://github.com/ImageMagick/ImageMagick/commit/d23beebe7b1179fb75db1e85fbca3100e49593d9

- magick/profile.c: double-free memory corruption
Debian Bug: https://bugs.debian.org/851383
Upstream Bug: https://github.com/ImageMagick/ImageMagick/issues/354
Fixed by: https://github.com/ImageMagick/ImageMagick/commit/6235f1f7a9f7b0f83b197f6cd0073dbb6602d0fb

- coders/mpc.c: memory leak in mpc file handling
Debian Bug: https://bugs.debian.org/851382
Fixed by: https://github.com/ImageMagick/ImageMagick/commit/4493d9ca1124564da17f9b628ef9d0f1a6be9738

- PushQuantumPixel heap buffer-overflow
Debian Bug: https://bugs.debian.org/851381
Upstream report: https://www.imagemagick.org/discourse-server/viewtopic.php?f=3&t=31161

- memory leak in caption and label handling
Debian Bug: https://bugs.debian.org/851380
Fixed by: https://github.com/ImageMagick/ImageMagick/commit/aeff00de228bc5a158c2a975ab47845d8a1db456

- coders/psd.c: out-of-bounds write flaw in psd file handling
Debian Bug: https://bugs.debian.org/851377
Upstream report: https://github.com/ImageMagick/ImageMagick/issues/350

- coders/psd.c: out-of-bounds write flaw in psd file handling
(different issue from the above)
Debian Bug: https://bugs.debian.org/851376
Upstream report: https://github.com/ImageMagick/ImageMagick/issues/348

- coders/psd.c: memory corruption heap overflow
Debian Bug: https://bugs.debian.org/851374
Upstream report: https://github.com/ImageMagick/ImageMagick/issues/347

Could you assign identifiers for those issues?

Regards,
Salvatore
