X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["467" "Tuesday" "5" "July" "2016" "20:25:22" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160705182522.GA26179@eldamar.local>" "17" "[oss-security] CVE Request: libgd: global out of bounds read when encoding gif from malformed input with gd2togif" nil nil nil "7" "2016070518:25:22" "[oss-security] CVE Request: libgd: global out of bounds read when encoding gif from malformed input with gd2togif" (number mark "U       carnil@debia Jul  5   17/467   " thread-indent "\"[oss-security] CVE Request: libgd: global out of bounds read when encoding gif from malformed input with gd2togif\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22480 invoked by uid 550); 5 Jul 2016 18:25:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22462 invoked from network); 5 Jul 2016 18:25:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7Tu3Ev7zW7jG2tglHPUWWvMGyg0ZiDxZoiOlpsf5SLg=;
        b=b5eGjdEn59ThIbg7h1dijbAporzKaykmK5HECjW84RCqsqtHrN7Os2RRFtJr3mOubc
         4b9kUW3gdQsbySx0ScAQK7jWvqBKz4thlPdf42VEOB0JFw3WRQjfq8OyOEEDHn0lVgHT
         pQ7U+HJPa8qH8W0APkafDshBjSAY5k2jTRXtRKiTI0j/yBknVnPzDHLwQC0kMJCszIns
         aolAX5QO8I9oBrUo9b7rSkVRr7fNaA5dyjpbaJtxh+0dVSeD63FWk0feZk+T6oboJDTR
         rXFToRKqoycijwCIkvr4khChU5XrC9xImelzb6aF7du2VECrSPdYlrSI45SKlQbk9svf
         3KBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=7Tu3Ev7zW7jG2tglHPUWWvMGyg0ZiDxZoiOlpsf5SLg=;
        b=b4e9SgFCRJQoZd+dWEab9bJMSYIjy+MhonfDEH648ZfAshs77YPe77siNyPewr2yqw
         uvCniSbI66d+sEPx6eJOLXrhxumRftuE3w4/ieBtlkypFn8aIxJFsSk3IhAo8YZeJSh4
         FH1SE5JEhO6ERtFd3TaaJUVHmM3IWz8Q/4Q+ZpxUFp5PqzDGDZ/8Vh6ukpRgIHLqMP7U
         shRwJzT/ZpiphepsiBAnBEpMFPWVZpRoeuDP28oIKQL0uIw9IE1TO7apUetBnlGp6AOL
         8Kq9shVv8sG3n9mHUgrUKb4JtUyn5+5dJH4NudUuEnr29rNVGUjfhYmBSU8pVvtOljxS
         +YOQ==
X-Gm-Message-State: ALyK8tI7OQJWUpc0GdK38QElv3AHgJsnI9paLdT+aDG0/H0hJ8ZebbuwPVvUZKLxMlkyHQ==
X-Received: by 10.194.88.65 with SMTP id be1mr16935538wjb.46.1467743112764;
        Tue, 05 Jul 2016 11:25:12 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 5 Jul 2016 20:25:22 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160705182522.GA26179@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] CVE Request: libgd: global out of bounds read when encoding gif from
 malformed input with gd2togif

Hi

The following (older) issue in libgd's issue tracker can be found,
with possible security impact for applications using the libgd
library. If I see it correctly this is not an issue in the gd2togif
utility but in the library. It was reported upstream as:

https://github.com/libgd/libgd/issues/209

with the fix

https://github.com/libgd/libgd/commit/82b80dcb70a7ca8986125ff412bceddafc896842 (gd-2.2.0)

Could you assign a CVE for this issue?

Regards,
Salvatore
