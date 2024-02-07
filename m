Received: (qmail 15702 invoked by uid 550); 7 Feb 2024 18:43:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11296 invoked from network); 7 Feb 2024 18:39:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1707331340;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Es3FlZYJkpSCnHXa0SvH4ZHI8Ju7arZMqeM4HoJmjr0=;
	b=hwxWZIBerH7Iv63/MQcrhvuz67+iMMxpayfLlnlDfY/iW2620z763b+g9FtY6EAQoYoT2Q
	iUlqGOIyOuqcWqT3gYgtFqkHBW6/iqUehUGf0GhZ3CRfKm+fros+WGbZ+khMITzAtZEPeM
	lGx9/FyT8VZqLVdoRxSEXtPB3uOXr4M=
X-MC-Unique: hbR5BFaHMJmfttam37dNxg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707331310; x=1707936110;
        h=content-transfer-encoding:organization:subject:from:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Es3FlZYJkpSCnHXa0SvH4ZHI8Ju7arZMqeM4HoJmjr0=;
        b=GahZ2gUlGaN2d02l10PTXhLUudJvz+yfeRYvJ/SicWx+hQ7BD72JxXDni59Y5gKk7l
         VLmBlZeMx/VjNgwa4mgFH5UkeXXv6hUlsUR18rmUv4ZbAKu1Vgldm7IVPKyd1sespE5D
         Vg8hxaqWwefndrsKEKIPIwCy9/IwxbZ816s2Wl596yID5eAs5qAkIC+9vZKhh+qpt+cX
         6CiXEWqEF198ujwFC+clkykJVxNyIhhy4HMc2ZvlZBSf38ZZgafUoNeNhfC+Mdqfgm8A
         PSWY84yQDESBLPyKb9pJn0wwAfHTXjnSlInIT39CwIG6pBxsmLa3A6bPHgLk8o3m5wL7
         mKAw==
X-Gm-Message-State: AOJu0YzEuiQzPDP2FhxobCcWIDU3VLkIRwFpNvCpjJzvVSd4rn5US5K8
	47fh8LLE9Z4H7j+Gwc4eXt1VjUqmZruE8p0FNqNpcQ+TN4EibmRKwHvsXBxS62L6gNI/SzmJoTc
	ReH35g8a5a9rRhqUB6omfjX5M5PS5Exr8tgZASpKZGMHmfqd5DFO4FUCmQ1kk9sDLBoVAub6GMK
	+pRNwkyw2PyOrJM7U9t85W/WgM4oAwyM60wJii7gUDYPnytG0=
X-Received: by 2002:a05:6214:224e:b0:68c:7f46:8327 with SMTP id c14-20020a056214224e00b0068c7f468327mr7989381qvc.3.1707331310715;
        Wed, 07 Feb 2024 10:41:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHIxUDU00UzS/l3utgzstYqL1pu4eiN5UxUHviF62uAx+VrhDE0kXDJ2HBgKKKLG7ABszuBJQ==
X-Received: by 2002:a05:6214:224e:b0:68c:7f46:8327 with SMTP id c14-20020a056214224e00b0068c7f468327mr7989351qvc.3.1707331310183;
        Wed, 07 Feb 2024 10:41:50 -0800 (PST)
Message-ID: <ec94d28c-dbf4-4506-98e3-313c38ae15d5@redhat.com>
Date: Wed, 7 Feb 2024 13:41:49 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] The GNU C Library has been authorized by the CVE Program as a CVE
 Numbering Authority (CNA)

The GNU C Library (glibc) is a key part of the trusted foundation
in a secure and high-quality software supply chain and is used
by the GNU Toolchain, the GNU system, and many of the GNU/Linux
systems today.

In an ongoing effort to improve security, the project has been
authorized by the CVE Program as a CVE Numbering Authority (CNA):
https://www.cve.org/Media/News/item/news/2024/02/06/GNU-C-Library-Added-as-CNA

As a CNA the glibc security team will be working to improve the
quality and response time of security advisories and mitigations.

Over the coming months, the glibc security team will define the
process for the CNA and establish best practices that can also
be used by the rest of the GNU Toolchain.

To receive notifications of new advisories please subscribe to the
glibc announcement mailing list (libc-announce):
https://sourceware.org/mailman/listinfo/libc-announce

Advisories are published directly into the glibc git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD

For more information please see the project security documentation:
https://sourceware.org/glibc/security.html

