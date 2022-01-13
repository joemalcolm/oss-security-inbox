X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4402" "Thursday" "13" "January" "2022" "11:10:00" "+0100" "Milan Broz" "gmazyland@gmail.com" nil "98" "[oss-security] CVE-2021-4122: cryptsetup 2.x: decryption through LUKS2 reencryption crash recovery" nil nil nil "1" nil nil (number mark "U       gmazyland@gm Jan 13   98/4402  " thread-indent "\"[oss-security] CVE-2021-4122: cryptsetup 2.x: decryption through LUKS2 reencryption crash recovery\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-4122: cryptsetup 2.x: decryption through LUKS2 reencryption crash recovery" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7689 invoked by uid 550); 13 Jan 2022 12:18:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21682 invoked from network); 13 Jan 2022 10:10:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=JhHOARwVDjxFH5MRZLlXd/MgN7u2sW5DJsyqsbdR9WQ=;
        b=esuHvsF1mebK6lAG7EHTFcTA0j6ODbkTKqu9BEzq2gu+fylAxYBj0QFIyUTATGPfnV
         6Re1M6FGBLkPCWhEArO0C0KcsvD3zHI2nEAN70pDH/VBUvoww6zXC0BwZ0obNOcECmU2
         fE+grgpLQyK450jz5jJPw4+eL8q+TwBBMlPNiyEY9SgQcnvrs+d5TJRH5/JlC/fR5dRu
         3/jtaDAo/Lv79vzeVAgf0Nh/o/aahYOroxkZDQ/eRS5HicG85jDutf3cFGbgYQnmYPvB
         lmAyWzOwjdIDdZ/+OhPckGqy+HCXSN32o6sfL+tRlluYEonA53Wrtp58zQluZpih/dVF
         lDsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=JhHOARwVDjxFH5MRZLlXd/MgN7u2sW5DJsyqsbdR9WQ=;
        b=3w+qQMfRVixsyyWeWHaFre6/fVMhY0gEzLTnNqMksEpgkP7cbsaJXSZDZCCoHXePg/
         rn1gSQtq4Qi1vM05LQ3sir0+BnUYG58FpsorhgGmQyepsC2ZWApVIxfmlMr6PJq/9eJ4
         cF7INTc8+qbu/LtpoHUkZ5RA/R+7w59xIC20WyE4eoMq0mc3oTKhbWufctkB86TKBDem
         Mq/pSqun5dvx2IFOcaBAo/1TM9WOaxBAOKuq5mPhtPcv2rMyk+Zly1zu+2J7WXCj9mPg
         xaCAP4nUM+GAaWk6aWlHZ464s97SkGdNJZZC3Z4exAGFFXxWz2DSfvcQLNKP8iMQ4n1K
         +WTA==
X-Gm-Message-State: AOAM5306lwBKwKEK1rqruVjkmhPi3Swg9uKN/VpdRiBiTboeXAEB/sP/
	TcHAdi7x27RoakjwCgdnE/z1KENC81c=
X-Google-Smtp-Source: ABdhPJzM4SpbXAymuOlKxaVAmLfCQ43Z7uqGF6UaaCp365SUsZaDpYun8WH0JuFW0vF4kF4I8oJ4pA==
X-Received: by 2002:a17:907:968c:: with SMTP id hd12mr2883264ejc.639.1642068602328;
        Thu, 13 Jan 2022 02:10:02 -0800 (PST)
Message-ID: <49e8cc07-ff0d-5cd1-ff2e-eee36bf7e46c@gmail.com>
Date: Thu, 13 Jan 2022 11:10:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
X-Mozilla-News-Host: news://archive.lwn.net:119
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Milan Broz <gmazyland@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2021-4122: cryptsetup 2.x: decryption through LUKS2 reencryption
 crash recovery

Description:

LUKS2 is an on-disk format for disk-encryption configuration with
cryptsetup as the tool for configuration on Linux systems.

LUKS2 online reencryption is an optional extension to allow a user to
change the data reencryption key while the data device is available for
use during the whole reencryption process.

CVE-2021-4122 describes a possible attack against data confidentiality
through LUKS2 online reencryption extension crash recovery.

An attacker can modify on-disk metadata to simulate decryption in
progress with crashed (unfinished) reencryption step and persistently
decrypt part of the LUKS device.

This attack requires repeated physical access to the LUKS device but
no knowledge of user passphrases.

The decryption step is performed after a valid user activates
the device with a correct passphrase and modified metadata.
There are no visible warnings for the user that such recovery happened
(except using the luksDump command). The attack can also be reversed
afterward (simulating crashed encryption from a plaintext) with
possible modification of revealed plaintext.

The size of possible decrypted data depends on configured LUKS2 header
size (metadata size is configurable for LUKS2).
With the default parameters (16 MiB LUKS2 header) and only one
allocated keyslot (512 bit key for AES-XTS), simulated decryption with
checksum resilience SHA1 (20 bytes checksum for 4096-byte blocks),
the maximal decrypted size can be over 3GiB.

The attack is not applicable to LUKS1 format, but the attacker can
update metadata in place to LUKS2 format as an additional step.
For such a converted LUKS2 header, the keyslot area is limited to
decrypted size (with SHA1 checksums) over 300 MiB.

The problem was caused by reusing a mechanism designed for actual
reencryption operation without reassessing the security impact for new
encryption and decryption operations. While the reencryption requires
calculating and verifying both key digests, no digest was needed to
initiate decryption recovery if the destination is plaintext (no
encryption key). Also, some metadata (like encryption cipher) is not
protected, and an attacker could change it. Note that LUKS2 protects
visible metadata only when a random change occurs. It does not protect
against intentional modification but such modification must not cause
a violation of data confidentiality.

Affected versions:

The issue is present in all cryptsetup releases since 2.2.0.
Versions 1.x, 2.0.x, and 2.1.x are not affected, as these do not
contain LUKS2 reencryption extension.

Fix:

The fix introduces additional digest protection of reencryption
metadata. The digest is calculated from known keys and critical
reencryption metadata. Now an attacker cannot create correct metadata
digest without knowledge of a passphrase for used keyslots.
For more details, see LUKS2 On-Disk Format Specification version 1.1.0.

The former reencryption operation (without the additional digest) is no
longer supported (reencryption with the digest is not backward
compatible). You need to finish in-progress reencryption before
updating to new packages. The alternative approach is to perform
a repair command from the updated package to recalculate reencryption
digest and fix metadata.
The reencryption repair operation always require a user passphrase.

An alternative fix is to use the newly introduced configure option
--disable-luks2-reencryption to completely disable LUKS2 reencryption
code.

When used, the libcryptsetup library can read metadata with reencryption
code, but all reencryption API calls and cryptsetup reencrypt commands
are disabled. Devices with online reencryption in progress cannot be
activated.

Fixed versions and links:

Fixed in cryptsetup 2.4.3 and 2.3.7.
   https://gitlab.com/cryptsetup/cryptsetup

For 2.2.x (no longer supported upstream) the fix backport would be very
problematic, the best option is to disable online reencryption.
See upstream branch with backported --disable-luks2-reencryption option.
     https://gitlab.com/cryptsetup/cryptsetup/-/tree/v2.2.x

LUKS2 documentation with online reencryption extension
     https://gitlab.com/cryptsetup/LUKS2-docs

Thanks Red Hat security for handling the CVE process.
   https://access.redhat.com/security/cve/cve-2021-4122
   https://bugzilla.redhat.com/show_bug.cgi?id=2032401

The issue was found by Milan Broz as cryptsetup maintainer.
