X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4918" "Monday" "16" "July" "2018" "15:10:41" "+0800" "Ruikai Liu" "lrk700@gmail.com" "<CAB6DpjW0BqVNJqBvSnKuA6bbAEpoEMvK6ef0ALEbhndYVubbCA@mail.gmail.com>" "163" "[oss-security] Integer underflow/overflow in MP4v2 2.0.0" nil nil nil "7" "2018071607:10:41" "[oss-security] Integer underflow/overflow in MP4v2 2.0.0" (number mark "U       lrk700@gmail Jul 16  163/4918  " thread-indent "\"[oss-security] Integer underflow/overflow in MP4v2 2.0.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19980 invoked by uid 550); 16 Jul 2018 08:23:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13420 invoked from network); 16 Jul 2018 07:11:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=N6ER/WrwuXjxyFSQDBwAGSWneg02SVHEM1np9tKZvI8=;
        b=ZPBKejjlTZCttgWq+7BZMClXtQW20Q+yHSU8tZM+hUiX0V2UdVCQDVypQmSantXi2K
         6axdW/fyoIe2L4XcMRCTJR+cDahCgPE8nXuPy/j5YYv/aFPmRcaZaBoadR5Ln6s7EV1g
         Zb1SEnzTnzlmSLYrHcYW2o0yHUxEvqsZnjf7Y3Oq5tlLqHBEZ3CkBbxS7oAMapNH6Og6
         +U0+9xVmWG3KAoPcLgvpS81o1oY3D1LFeCLdbWxR1oR1kqVp5XwKY5KJQXZM+Bvjj4Cu
         yJgBKI6L6FPUYUeU4VC0Oxj11YBZupJ76dMAgFeSebiRvXJMVxRIKVgAWJqP6b12JB55
         dCjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=N6ER/WrwuXjxyFSQDBwAGSWneg02SVHEM1np9tKZvI8=;
        b=ZmJfpbZMtta8sHg5UwPHrzfVopzcFq1JUrUxn+uhWAjNpacFjpxdlyKE44DnrFCn2S
         jQoh6TMIH0IhPbRUeqaQzp9H0LChAG+JFJ1fkwKtpqvEiOmKSGd/Y9tuI6dImSbImqs5
         7N4taFdfzgwe88T2R/jxKwD0IaedI7mP62FsKvlesZPj6o1yczWY/GpHoXftEh2J9zT3
         eAExgcXJZmc+Ze05YDElABsdcSpzyV0L45ZTrt+9hWUW7h4glSWcwRvLDEpTRUf/AMgJ
         4+IsRm1boKe3pvN6n7ekrPI4W6VV2k9rKtrg137Y65jrxKauuuTFxgnvPUyMLK+rRlXJ
         SjSQ==
X-Gm-Message-State: AOUpUlEr5MqweuKtQCGvHuqaIsONiBPV6w1MwWIav5PSpcz5eWAM3zTa
	RkrLyD6ocNSwdF6y+SBv/Dyjk3lkeU+fSWAV+lzzyw==
X-Google-Smtp-Source: AAOMgpf8yFb7CJ9fy/Jz5g8HSfCA+42d3NWe9yGppp1nlISOCayP0XB7tdHiFgVW8LQEK9KeNdLWHb3WMRAOkaxkJG0=
X-Received: by 2002:a24:7a84:: with SMTP id a126-v6mr11595922itc.111.1531725052716;
 Mon, 16 Jul 2018 00:10:52 -0700 (PDT)
MIME-Version: 1.0
From: Ruikai Liu <lrk700@gmail.com>
Date: Mon, 16 Jul 2018 15:10:41 +0800
Message-ID: <CAB6DpjW0BqVNJqBvSnKuA6bbAEpoEMvK6ef0ALEbhndYVubbCA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a95b2f057118871a"
Subject: [oss-security] Integer underflow/overflow in MP4v2 2.0.0

--000000000000a95b2f057118871a
Content-Type: text/plain; charset="UTF-8"

Hi,

Integer underflow and overflow are found in MP4v2 2.0.0, a legacy library
dealing with MP4 media file.

========= Underflow =========

Atom is the basic element of MP4. However there's an integer underflow when
parsing an atom(src/mp4atom.cpp):

 121     uint64_t dataSize = file.ReadUInt32();
 ...
 146     dataSize -= hdrSize;
 ...
 151     if (pos + hdrSize + dataSize > pParentAtom->GetEnd()) {
 ...
 164         // skip to end of atom
 165         dataSize = pParentAtom->GetEnd() - pos - hdrSize;
 166     }

If `dataSize` read from file is less than `hdrSize`, then underflow happens
and it becomes a very large unsigned integer at line 146. Yet the check at
line 151 would still be passed, which results in an corrupted atom with
extremely large size.

========= Overflow =========

`ftyp` is an atom that describes the version info of the MP4 file. It will
allocate memory for compatible brands according to the atom's size:

 54 void MP4FtypAtom::Read()
 55 {
 56     compatibleBrands.SetCount( (m_size - 8) / 4 ); // brands array
fills rest of atom
 57     MP4Atom::Read();
 58 }

 342 void MP4StringProperty::SetCount(uint32_t count)
 343 {
 344     uint32_t oldCount = m_values.Size();
 345
 346     m_values.Resize(count);
 347
 348     for (uint32_t i = oldCount; i < count; i++) {
 349         m_values[i] = NULL;
 350     }
 351 }

`Resize` here is a wrapper of `realloc`:

102         void Resize(MP4ArrayIndex newSize) { \
103             m_numElements = newSize; \
104             m_maxNumElements = newSize; \
105             m_elements = (type*)MP4Realloc(m_elements, \
106                 m_maxNumElements * sizeof(type)); \
107         } \

We notice that an integer overflow could happen when calculating
`m_maxNumElements * sizeof(type)`. So the allocation may return a buffer
smaller than needed, and later operations on the buffer could result in
invalid memory reference, like setting values to be NULL in
`MP4StringProperty::SetCount`. This is the case for 64-bits program which
allows memory allocation for large(~4GB) size.

Things are a little different for 32-bits. In this case `realloc` would
fail and throws an exception:

 74 inline void* MP4Realloc(void* p, uint32_t newSize) {
 75     // workaround library bug
 76     if (p == NULL && newSize == 0) {
 77         return NULL;
 78     }
 79
 80     void* temp = realloc(p, newSize);
 81     if (temp == NULL && newSize > 0) {
 82         throw new PlatformException("malloc
failed",errno,__FILE__,__LINE__,__FUNCTION__);
 83     }
 84     return temp;
 85 }

And the destructor the `MP4StringProperty` would be invoked:

 334 MP4StringProperty::~MP4StringProperty()
 335 {
 336     uint32_t count = GetCount();
 337     for (uint32_t i = 0; i < count; i++) {
 338         MP4Free(m_values[i]);
 339     }
 340 }

But the count here is still the extremly large number we set before, and
the for-loop would certainly have some invalid addresses been freed.

========= POC =========

Here's a very simple POC file:

root@debian:~# hexdump -Cv c2.mp4
00000000  00 00 00 07 66 74 79 70  6d 70 34 32 41 41 41 41
|....ftypmp42AAAA|
00000010  41 41 41 41 41 41 41 41                           |AAAAAAAA|
00000018

The size of the `ftyp` box is 7(the first 4 bytes), which is smalller than
the header size(8 bytes). Therefore the `dataSize` for this atom would
become -1=0xffffffffffffffff.

This POC file crashes both 32-bits and 64-bits mp4info.

========= Fix =========

For the underflow, we could check if `dataSize >= hdrSize` satisfies:

--- src/mp4atom.cpp     2018-07-16 14:54:33.513635593 +0800
+++ ../mp4v2-2.0.0-orig/src/mp4atom.cpp     2012-05-21 06:11:53.000000000
+0800
@@ -143,9 +143,6 @@
         dataSize = file.GetSize() - pos;
     }

-    if(dataSize < hdrSize) {
-        throw new Exception( "invalid dataSize", __FILE__, __LINE__,
__FUNCTION__ );
-    }
     dataSize -= hdrSize;

     log.verbose1f("\"%s\": type = \"%s\" data-size = %" PRIu64 " (0x%"
PRIx64 ") hdr %u",


For the overflow, we could check the result of the integer multiplication:

--- src/mp4array.h      2018-07-16 15:00:51.333620723 +0800
+++ ../mp4v2-2.0.0-orig-/src/mp4array.h      2012-05-21 06:11:53.000000000
+0800
@@ -102,11 +102,8 @@
         void Resize(MP4ArrayIndex newSize) { \
             m_numElements = newSize; \
             m_maxNumElements = newSize; \
-            uint32_t mul = newSize * sizeof(type); \
-            if(mul / newSize != sizeof(type)) \
-                throw new Exception("multiplication overflow", __FILE__,
__LINE__, __FUNCTION__);\
             m_elements = (type*)MP4Realloc(m_elements, \
-                mul); \
+                m_maxNumElements * sizeof(type)); \
         } \


========= Reference =========

https://code.google.com/archive/p/mp4v2/

-- 
Best regards,

Ruikai Liu

--000000000000a95b2f057118871a--
