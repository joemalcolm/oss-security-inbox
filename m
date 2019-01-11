X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4331" "Friday" "11" "January" "2019" "23:44:02" "+0530" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tRjAg5iioDo18JpJdvNQDdtdaZBU_GcPacnqHDCGBcp2A@mail.gmail.com>" "100" "[oss-security] Memory leak in libiec61850" "^Date:" nil nil "1" "2019011118:14:02" "[oss-security] Memory leak in libiec61850" (number mark "        mishra.dhira Jan 11  100/4331  " thread-indent "\"[oss-security] Memory leak in libiec61850\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5518 invoked by uid 550); 11 Jan 2019 18:20:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27880 invoked from network); 11 Jan 2019 18:14:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=GsJ0ScScoEIVfjjAscNVhJSLby+KTlrFrGjy+9rSVRc=;
        b=ZPPdHCDcQoVR6bYSC5pU96gLD1e9Xy79G2lMi2h6I8LOphdOH2DocRulTsfRo6OiWY
         RxKLC5J0eTIMeC+GehpFMNfgmbkpi4yX8tK4PFy3zbUP4T7CPdXYAhmM/7vvmyqI0Jfq
         +pFuBQeOTtTUmmF86O2qw1VJjc8DcD5jp2Fc4uR61NXZPaIPkuaiwjjx/fw/RubAQkMn
         H+W84xQL0zA3gMYCC15GjyjRqmyfifgvNmbEbcyNps5WxtlCBWD4/VjNmxM8mL1+QWqT
         RwWHUNOvPDJ/NEDJrySkR90Uaz3G2NB5/1hhvZ2DxUnKheMLhJTUeh+F/m94/h+cG2EF
         v3wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GsJ0ScScoEIVfjjAscNVhJSLby+KTlrFrGjy+9rSVRc=;
        b=ASB7nY7+LelyyGDRjwZ4Aca2+sM3PzY8xXRf9uSygaUGDjzX+BWb+T3YvNfPFKNQsu
         UFeORkjJ7D/ea7mFsxlexlDXfodJxNGx9hBUiztCaii6WgXDdrjli2Mbi//AHpYJ93Xp
         9OYVvPENDoAScAx8B+XlKMmAwi+XW1OK4uqfr6FWZB/dtcdY8frsLoZ/NFA5nbSSGcOM
         CnHmL1fzCaWtof3nYPnpLK3hOKkgfR3Hktk4Ko1jOhpp9CBTZWDfgNVq/fNo0V6Ed7z1
         1PSBt07wVMCd3mqFCU/vSXABeb/rltjxZbXG7vgFuPx7m5vG+hwUsDMRfT69A90ZTBNq
         OReQ==
X-Gm-Message-State: AJcUukcFrrR2d3cyfj2WnrVp30pPj4ebXiWxCjNJv9lVUd9KV+iLwKNO
	4k3GlDAvBu5lX1Gup7FXawSIWb7k/tJsu+TOO7WY24Fw
X-Google-Smtp-Source: ALg8bN4A9Nc/+L2mPYUx1lGbFuCnCD3w+QUVcQwCx+PPX5BTS/fYQn5dgsjFkDDPrK/jAR8ybeuvwnQkFAPwY3QjJj4=
X-Received: by 2002:a63:bd51:: with SMTP id d17mr14527259pgp.443.1547230453303;
 Fri, 11 Jan 2019 10:14:13 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAG8b5tRjAg5iioDo18JpJdvNQDdtdaZBU_GcPacnqHDCGBcp2A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000008e0cc9057f32a91f"
Date: Fri, 11 Jan 2019 23:44:02 +0530
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Memory leak in libiec61850
To: oss-security@lists.openwall.com

--0000000000008e0cc9057f32a91f
Content-Type: text/plain; charset="UTF-8"

Hi List,

## Summary:
An issue has been found in libIEC61850 v1.3.1. Memory_malloc and
Memory_calloc in hal/memory/lib_memory.c have memory leaks when called from
mms/iso_mms/common/mms_value.c, server/mms_mapping/mms_mapping.c, and
server/mms_mapping/mms_sv.c (via common/string_utilities.c), as
demonstrated by iec61850_9_2_LE_example.c.

## Snip code from mms_value.c#L1583-L1600:
    self->value.visibleString.buf = (char*) GLOBAL_MALLOC(size + 1);

    if (self->value.visibleString.buf == NULL) {
        GLOBAL_FREEMEM(self);
        self = NULL;
        goto exit_function;
    }

    self->value.visibleString.buf[0] = 0;

    exit_function:
    return self;
}

MmsValue*
MmsValue_newVisibleStringWithSize(int size)
{

## Memory leak:

==23314==ERROR: LeakSanitizer: detected memory leaks
Direct leak of 260 byte(s) in 2 object(s) allocated from:
    #0 0x7fd669c33b50 in __interceptor_malloc
(/usr/lib/x86_64-linux-gnu/libasan.so.4+0xdeb50)
    #1 0x55f220071c7c in Memory_malloc
/home/input0/Desktop/libiec61850/hal/memory/lib_memory.c:47
    #2 0x55f21ff7390d in MmsValue_newStringWithSize
/home/input0/Desktop/libiec61850/src/mms/iso_mms/common/mms_value.c:1583
    #3 0x55f21ff73a80 in MmsValue_newVisibleStringWithSize
/home/input0/Desktop/libiec61850/src/mms/iso_mms/common/mms_value.c:1600
    #4 0x55f21ff72d0d in MmsValue_newDefaultValue
/home/input0/Desktop/libiec61850/src/mms/iso_mms/common/mms_value.c:1457
    #5 0x55f21ff72203 in MmsValue_newStructure
/home/input0/Desktop/libiec61850/src/mms/iso_mms/common/mms_value.c:1391
    #6 0x55f21ffafcf7 in LIBIEC61850_SV_createSVControlBlocks
/home/input0/Desktop/libiec61850/src/iec61850/server/mms_mapping/mms_sv.c:428
    #7 0x55f21ff8df69 in createNamedVariableFromLogicalNode
/home/input0/Desktop/libiec61850/src/iec61850/server/mms_mapping/mms_mapping.c:1090
    #8 0x55f21ff8ea2f in createMmsDomainFromIedDevice
/home/input0/Desktop/libiec61850/src/iec61850/server/mms_mapping/mms_mapping.c:1193
    #9 0x55f21ff8ec8d in createMmsDataModel
/home/input0/Desktop/libiec61850/src/iec61850/server/mms_mapping/mms_mapping.c:1215
    #10 0x55f21ff8f2ef in createMmsModelFromIedModel
/home/input0/Desktop/libiec61850/src/iec61850/server/mms_mapping/mms_mapping.c:1298
    #11 0x55f21ff8f5a8 in MmsMapping_create
/home/input0/Desktop/libiec61850/src/iec61850/server/mms_mapping/mms_mapping.c:1344
    #12 0x55f21ff7a565 in IedServer_createWithConfig
/home/input0/Desktop/libiec61850/src/iec61850/server/impl/ied_server.c:430
    #13 0x55f21ff7abcb in IedServer_create
/home/input0/Desktop/libiec61850/src/iec61850/server/impl/ied_server.c:483
    #14 0x55f21ff66cf7 in main
/home/input0/Desktop/libiec61850/examples/iec61850_9_2_LE_example/iec61850_9_2_LE_example.c:119
    #15 0x7fd6691c8b96 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21b96)

Direct leak of 216 byte(s) in 17 object(s) allocated from:
    #0 0x7fd669c33d38 in __interceptor_calloc
(/usr/lib/x86_64-linux-gnu/libasan.so.4+0xded38)
    #1 0x55f220071cb5 in Memory_calloc
/home/input0/Desktop/libiec61850/hal/memory/lib_memory.c:59
    #2 0x55f21ff72045 in MmsValue_newStructure
/home/input0/Desktop/libiec61850/src/mms/iso_mms/common/mms_value.c:1386
    #3 0x55f21ff72ecd in MmsValue_newDefaultValue
/home/input0/Desktop/libiec61850/src/mms/iso_mms/common/mms_value.c:1479
    #4 0x55f21ff72203 in MmsValue_newStructure
/home/input0/Desktop/libiec61850/src/mms/iso_mms/common/mms_value.c:1391
    #5 0x55f21ff72ecd in MmsValue_newDefaultValue
/home/input0/Desktop/libiec61850/src/mms/iso_mms/common/mms_value.c:1479
    #6 0x55f21ff791b4 in createMmsServerCache
/home/input0/Desktop/libiec61850/src/iec61850/server/impl/ied_server.c:207
    #7 0x55f21ff7aa4d in IedServer_createWithConfig
/home/input0/Desktop/libiec61850/src/iec61850/server/impl/ied_server.c:453
    #8 0x55f21ff7abcb in IedServer_create
/home/input0/Desktop/libiec61850/src/iec61850/server/impl/ied_server.c:483
    #9 0x55f21ff66cf7 in main
/home/input0/Desktop/libiec61850/examples/iec61850_9_2_LE_example/iec61850_9_2_LE_example.c:119
    #10 0x7fd6691c8b96 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21b96)
.....

Later CVE-2019-6138 was assigned to this issue.


Thank you
@mishradhiraj_

--0000000000008e0cc9057f32a91f--
