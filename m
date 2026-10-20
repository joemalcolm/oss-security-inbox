X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/6
Message-ID: <trinity-0e7ec03b-c300-45cc-8cd4-3cd5c5de9df5-1792493149826@trinity-msg-rest-gmx-gmx-live-5d6886bf55-hp5xm>
Date: Tue, 20 Oct 2026 10:45:50 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-52290: FFmpeg NULL pointer dereference in avpriv_h264_has_num_reorder_frames
Content-Type: text/plain; charset=utf-8

Product:   FFmpeg (ffmpeg / libavcodec / libavformat)
Affected:  N-119856-gbe46370941
           Commit be46370941405fb04402d96373a53e2a1846f3ac
CVE:       CVE-2025-52290
CWE:       CWE-476 (NULL Pointer Dereference; reporter classification)
CVSS 3.1:  7.5 HIGH (AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H; CISA-ADP)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  Processing a crafted media file can crash FFmpeg in
  avpriv_h264_has_num_reorder_frames() at libavcodec/h264dec.c:64:17.
  The sample is named 1_poc.mp4, but the reproduction log identifies the
  input as MPEG-TS.

  Before the crash, FFmpeg reports that an AVCodecContext allocated for
  AAC was passed to avcodec_open2() for H.264. During stream probing,
  has_decode_delay_been_guessed() in libavformat/demux.c calls
  avpriv_h264_has_num_reorder_frames(), where AddressSanitizer records
  a segmentation fault caused by a read memory access.

  The report attributes the crash to a NULL or invalid H.264 parameter-set
  pointer (ps.sps) following the codec-context mismatch. The precise
  pointer state is not established by the ASan trace alone.

Impact:
  An attacker who can supply a crafted input to an FFmpeg-based media
  processing workflow can cause abnormal process termination and denial
  of service. The crash was observed in both standard and ASan builds.
  Code execution has not been demonstrated.

  Exposure depends on deployment: an automated upload/transcoding service
  may process the file without user interaction, while interactive use
  requires a user to open or process the file. The CVSS score above is
  the CISA-ADP assessment in the published CVE record.

Reproduction:
  Tested on x86_64 Linux using GCC 14 and Debian Clang 19.1.7.
  The ASan build used --toolchain=clang-asan --enable-debug=3
  --disable-optimizations --disable-stripping.
  Full build options are included in the linked report.

  Command:
    ./ffmpeg -i ./1_poc.mp4 -f null -

ASan log excerpt (source paths shortened):
  [aac @ 0x519000002380] This AVCodecContext was allocated for aac, but h264 passed to avcodec_open2()
  [aac @ 0x519000002380] reference count 2 overflow
  AddressSanitizer:DEADLYSIGNAL
  ==1013058==ERROR: AddressSanitizer: SEGV on unknown address 0x52d000103a40 (pc 0x5633fed4a562 bp 0x7ffe0ddcc4c0 sp 0x7ffe0ddcc480 T0)
  ==1013058==The signal is caused by a READ memory access.
      #0 0x5633fed4a562 in avpriv_h264_has_num_reorder_frames libavcodec/h264dec.c:64:17
      #1 0x5633fdf6c978 in has_decode_delay_been_guessed libavformat/demux.c:757:9
      #2 0x5633fdf757e4 in compute_pkt_fields libavformat/demux.c:1137:13
      #3 0x5633fdf7252c in parse_packet libavformat/demux.c:1265:9
      #4 0x5633fdf5db45 in read_frame_internal libavformat/demux.c:1449:24
      #5 0x5633fdf63fe6 in avformat_find_stream_info libavformat/demux.c:2692:15
  SUMMARY: AddressSanitizer: SEGV libavcodec/h264dec.c:64:17 in avpriv_h264_has_num_reorder_frames
  ==1013058==ABORTING

Vendor coordination:
  The report and PoC were sent to ffmpeg-security@...peg.org. According
  to the disclosure records, Michael Niedermayer replied with a suggestion
  to publish independently.

Fix status:
  The supplied disclosure materials do not identify a fixing commit or
  a verified fixed release. The affected version above is the tested
  revision; the full affected-version range has not been established.

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/FFmpeg/ffmpeg/1/1_poc.mp4

References:
  https://github.com/sigdevel/pocs/blob/main/res/FFmpeg/ffmpeg/1/1_libavcodec_h264dec.c.64_17.md
  https://www.cve.org/CVERecord?id=CVE-2025-52290
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/52xxx/CVE-2025-52290.json
  https://infosec.exchange/@sigdevel/116733488628458667
  https://ffmpeg.org/


——
Best regards, Alexander A. Shvedov
@sigdevel
