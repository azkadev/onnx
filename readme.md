<p align="center"><img width="40%" src="https://github.com/onnx/onnx/raw/main/docs/onnx-horizontal-color.png" /></p>


---

### Demo

---

### Update And Maintance

 - Indonesian:
   
   Saya membutuhkan kuota internet banyak untuk maintance project ini, jika anda tidak keberatan silahkan sponsor saya (saat ini kuota internet saya lambat dan terbatas)
   
 - English:

   I need a lot of internet quota to maintain this project, if you don't mind please sponsor me (currently my internet quota is slow and limited)
   

## Mendapatkan Model ONNX
### Hugging Face
[🤗 Hugging Face](https://huggingface.co/models) memiliki banyak koleksi model, termasuk banyak yang berformat ONNX. 90% modelnya adalah Pytorch, yang dapat dikonversi ke ONNX.

Berikut adalah pencariannya [ONNX models](https://huggingface.co/models?library=onnx&sort=trending). 

### Ekspor ONNX dari Pytorch, Tensorflow, & lainnya
Sebuah Alat command-line di panggil `optimum-cli` dari HuggingFace mengonversi model Pytorch dan Tensorflow. Ini mencakup sebagian besar model. `optimum-cli` juga dapat mengkuantisasi model, mengurangi ukuran model secara signifikan, biasanya dengan dampak akurasi yang dapat diabaikan.

Lihat [official documentation](https://huggingface.co/docs/optimum/exporters/onnx/usage_guides/export_a_model) / Petunjuk Cepat [snippet on GitHub](https://github.com/huggingface/optimum#run-the-exported-model-using-onnx-runtime).  
Alat lain yang mengotomatiskan konversi ke ONNX adalah [HFOnnx](https://neuml.github.io/txtai/pipeline/train/hfonnx/). Itu digunakan untuk mengekspor model penyematan teks di repo ini. Keunggulannya mencakup ukuran model yang jauh lebih kecil, dan menggabungkan pasca-pemrosesan (penggabungan) ke dalam model itu sendiri.

- Pengantar singkat tentang cara kerja format & waktu proses model ONNX [huggingface.com](https://huggingface.co/docs/optimum/onnxruntime/concept_guides/onnx)
- [Netron](https://netron.app/) memungkinkan Anda melihat model ONNX, memeriksa grafik runtime, dan mengekspornya ke format lain

  
### Tested On

| No | Device        | Os           | Ram  | CPU             |
|----|---------------|--------------|------|-----------------|
| 1. | Msi Modern 14 | Ubuntu 22.04 | 8 gb | Amd Ryzen 5500u |
| 2. | Realme 5      | Android 11   | 3gb  | Snapdragon 665  |


### Development

1. Compile Library

```bash
cd native_lib
rm -rf build
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
```

2. Compile Library Android

```bash
cd native_lib
rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=${ANDROID_SDK}/ndk/24.0.8215888/build/cmake/android.toolchain.cmake -DCMAKE_BUILD_TYPE=Release -DANDROID_ABI=arm64-v8a
cmake --build .
```

### Install Library

```bash
dart pub add onnx_dart
```

or flutter

```bash
dart pub add onnx_dart onnx_flutter
```

### Import Library

```dart
import 'package:onnx_dart/onnx_dart.dart';
```

### Model Example Now

- [x] [Whisper Audio To Text](package/onnx_dart/example/whisper)


## Refferensi Sumber Belajar

1. [ONNX](https://github.com/onnx/onnx)
2. [ONNX Runtime](https://github.com/microsoft/onnxruntime)
3. [FONNX](https://github.com/Telosnex/fonnx)
 