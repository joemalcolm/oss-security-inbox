X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1081" "Tuesday" "12" "July" "2016" "17:20:57" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do4-EQkguy1Q+=khZsnPNXLDn5bueBAgPg+FuDvffLST8A@mail.gmail.com>" "37" "Re: [oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS" nil nil nil "7" "2016071215:20:57" "[oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS" (number mark "U       cbuissar@red Jul 12   37/1081  " thread-indent "\"Re: [oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS\"\n") "<4a28b9ab-e52e-8de1-3b83-d7dbb1881653@redhat.com>" ("<CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>" "<20160711125157.7ed792f4@pc1>" "<CAKG8Do4_-amOBNVDiSviBPqT6hQBcAQG5h9_L+JGderoQx0cOw@mail.gmail.com>" "<4a28b9ab-e52e-8de1-3b83-d7dbb1881653@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7719 invoked by uid 550); 12 Jul 2016 15:21:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7695 invoked from network); 12 Jul 2016 15:21:10 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=itZxARxROH65h2ZfSdSmkLfKbbO+ocUxYZJSAnpilQo=;
        b=fepDvTXVo3CuUKoTyBeOWv0kBra7+sVTUPzrjKNaGol9M34KT/q3SdZMjY44Gpf8+8
         DupMBsYuKTibNPC6Acub71//gmV3MPTDEpktVuJ4MwvDK63zcPmx/7SmjrKqkBaGXgtE
         832KEXwo3FHz8vxppkPJ71omzBNay3FBJY2VwCWBCuPrErCYO5F67ljLBnG8gErYMhBB
         Lu+nJfXmsjpc15awZ9WefQSlKjXDop6KisGxp5MAPLG9EwNTDlqE9ZDJPngdwsl8hQcl
         TXd+hOnwYuKfU6rUJqBjgzny2SJd6iOLUqKOgChQPg6B7OS7E7QzGAKb2bGd2FoG0l2a
         1a2g==
X-Gm-Message-State: ALyK8tJY77i6s67WsfZrMJAiusfh+cYsteYWphyR/ouyfMQr0iPgmQecfBUEA1O6G+Oz0Ot6QXLpJzrZLm2xgEKQ
X-Received: by 10.98.73.131 with SMTP id r3mr13220978pfi.112.1468336857655;
 Tue, 12 Jul 2016 08:20:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4a28b9ab-e52e-8de1-3b83-d7dbb1881653@redhat.com>
References: <CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>
 <20160711125157.7ed792f4@pc1> <CAKG8Do4_-amOBNVDiSviBPqT6hQBcAQG5h9_L+JGderoQx0cOw@mail.gmail.com>
 <4a28b9ab-e52e-8de1-3b83-d7dbb1881653@redhat.com>
From: Cedric Buissart <cbuissar@redhat.com>
Date: Tue, 12 Jul 2016 17:20:57 +0200
Message-ID: <CAKG8Do4-EQkguy1Q+=khZsnPNXLDn5bueBAgPg+FuDvffLST8A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c0c0cd2cfc5d6053771d066
Subject: Re: [oss-security] CVE-2016-5011: util-linux: Extended partition loop
 in MBR partition table leads to DoS

--94eb2c0c0cd2cfc5d6053771d066
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 11, 2016 at 5:19 PM, Florian Weimer <fweimer@redhat.com> wrote:

> On 07/11/2016 01:32 PM, Cedric Buissart wrote:
>
> I looked at other projects to see what is being done to prevent this
>> particular loop from happening. Until now, tools I checked are protected
>> either by detecting the loop (i.e.: actively searching for a relative
>> offset of 0 for the next EBR, as done by this util-linux patch; partprobe
>> and fdisk are doing that), or enforcing a limit on the maximum number of
>> partitions for a device (Linux kernel, kpartx & other tools I currently
>> checked)
>>
>
> How does util-linux protect against loops which are non-empty?  Does it
> reject negative offsets?
>
Indeed, the the patch wasn't sufficient.
The following has been added, in order to prevent jumping back to a
precedent EBR :
https://github.com/karelzak/util-linux/commit/50d1594c2e6142a3b51d2143c74027480df082e0


>
> Thanks,
> Florian
>



-- 
Cedric Buissart,
Product Security

--94eb2c0c0cd2cfc5d6053771d066--
