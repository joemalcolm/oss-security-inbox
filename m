Received: (qmail 22510 invoked by uid 550); 8 Aug 2022 09:46:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26601 invoked from network); 8 Aug 2022 07:18:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659943112;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Y/nrSvyiSoDDwsXI2lJHq4artnZp0kfUFCPQ+ibWpu8=;
	b=ccVenVD4InUykc0/yI75k6AYTHYct9984LaKwj8/c/lLMg9Vmnsg/bar/lvnZrmT+SPlXx
	hCAwLKMZ59kaRdjkEb78YipMpaRhv32xIbjGpwybpyuhiNFZ6fuYzS67tCZXV6tz5h4Xaf
	Hkthtiv4IYJ+oGS+dtvv6ryuPQOvGU4=
X-MC-Unique: JTENHw7PMRyiH1vH57GJ8A-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:to:organization:from
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Y/nrSvyiSoDDwsXI2lJHq4artnZp0kfUFCPQ+ibWpu8=;
        b=y1jaaEGorlktPK0ManwpHtLIXNWgUi41OkxMfqGT9v24WC2Z1+uU23ftSsvf8/QLI3
         hcixL9AY6iFv4cljW+Mt+g60ymCyt43ss2OMQFflTo4M+kFssh2oRKL4oyA8Pl4lj6/q
         TOOKOxirKmn0Iw9JWSYyIQZuEdgpRnhXGEWfbanYlkPViDl0T5YiWxN8cKEd2Am9KpH9
         ezJfalSqYPuUTkq5EFCzVnAwv8sVhL3KTzdutwQ008JGK7cEdBcsIgVEpNOpPSOa6PaZ
         81x4D4mBJUbqciMKkjLhFhaOHMB4SYPBqyxqtWgAbOBAwBmR6qNzuGNPC2GINk++jd6o
         Uu6Q==
X-Gm-Message-State: ACgBeo0uOlCqu0m5amZWZd6NIXnCkl2pWnkJR8XS0uCUh8UVMzq7RQuk
	dOTAACbooEFA6WbVam4HmtH8Im0wmE2zMIUXSWnzGPH4hkk/dxi7RToYTcQTxYnHUJkL23iw3X4
	6VOmTeMJu09COrWq5rX8TCIP3nie2Fo7aspB3AVGlLmwJVGxgecJZkecYebbOjbjLEcJNdp1Arx
	d5
X-Received: by 2002:a1c:29c1:0:b0:3a3:79b0:1ced with SMTP id p184-20020a1c29c1000000b003a379b01cedmr11634889wmp.73.1659943109843;
        Mon, 08 Aug 2022 00:18:29 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4QtsneACVNTQ2yiOpKK2o33XaTNkC5YFPzn53Oy4ObJ878aNKouAZD/MG8wbLKPivOHJ/Dcg==
X-Received: by 2002:a1c:29c1:0:b0:3a3:79b0:1ced with SMTP id p184-20020a1c29c1000000b003a379b01cedmr11634862wmp.73.1659943109350;
        Mon, 08 Aug 2022 00:18:29 -0700 (PDT)
Message-ID: <1973d16e-bb3e-c5b2-74e0-cc2faf9db2bd@redhat.com>
Date: Mon, 8 Aug 2022 09:18:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2022-2590: Linux kernel: Modifying shmem/tmpfs files without
 write permissions

Hi,

I found a security issue (CVE-2022-2590) in the Linux kernel similar to
Dirty COW (CVE-2016-5195), however, restricted to shared memory (shmem /
tmpfs). I notified distributions one week ago and the embargo ended today.

An unprivileged user can modify file content of a shmem (tmpfs) file,
even if that user does not have write permissions to the file. The file
could be an executable.

The introducing upstream commit ID is:
  9ae0f87d009c ("mm/shmem: unconditionally set pte dirty in
  mfill_atomic_install_pte")

Linux >= v5.16 is affected on x86-64 and aarch64 if the kernel is
compiled with CONFIG_USERFAULTFD=y. For Linux < v5.19 it's sufficient to
revert the problematic commit, which is possible with minor contextual
conflicts. For Linux >= v5.19 I'll send a proposal fix today.

I have a working reproducer that I will post as reply to this mail in
one week (August 15).

-- 
Thanks,

David / dhildenb

