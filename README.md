# Semantic Scene Segmentation – Hack for Green Bharat (Duality AI)

## Problem Statement
This project addresses the Duality AI Semantic Scene Segmentation challenge as part of the Hack for Green Bharat hackathon.  
The objective is to perform pixel-wise classification of off-road scenes into semantic classes such as ground, vegetation, rocks, sky, and landscape.

---

## Dataset
The dataset is provided by Duality AI and consists of:
- Training images with pixel-level segmentation masks
- Validation split
- Testing images (without labels)

Dataset source:  
https://www.duality.ai/

The dataset is **not included in this repository** due to size constraints.

---

## Model Architecture
- Backbone: **DINOv2 ViT-S/14**
- Segmentation Head: Lightweight convolutional decoder
- Task: Multi-class semantic segmentation (10 classes)

---

## Training Setup
- Platform: macOS
- Training device: CPU
- Epochs: 10
- Learning rate: 1e-4
- Loss: Cross-entropy based segmentation loss

---

## Baseline Model
The baseline model was trained without data augmentation.

**Baseline Results (Validation):**
- Mean IoU ≈ 0.23
- Dice Score ≈ 0.44

Baseline artifacts are available under:
- `train_stats_baseline/`
- `predictions_baseline/`

---

## Model Improvements
Two key improvements were applied:
1. **Data Augmentation**
   - RandomHorizontalFlip
   - ColorJitter (brightness, contrast, saturation)
2. **Improved generalization analysis**
   - Visual inspection of failure cases
   - Comparison of per-class IoU

---

## Improved Model Results
**Improved Results (Validation/Test):**
- Mean IoU ≈ 0.19–0.22 (test set)
- Better visual smoothness and generalization

Artifacts are available under:
- `train_stats/`
- `predictions/`

---

## Environment Setup (Optional)
An optional `ENV_SETUP/` folder is provided.

Alternatively, create the environment manually:

```bash
conda create -n EDU python=3.8
conda activate EDU
pip install numpy opencv-python matplotlib pillow tqdm scikit-learn torch torchvision
