package com.project.enums;

    public enum Visibility {

        PUBLIC(0), PRIVATE(1);

        private final int visibility;

        Visibility(int visibility) {
            this.visibility = visibility;
        }

        int getVisibility() {
            return this.visibility;
        }

    }

