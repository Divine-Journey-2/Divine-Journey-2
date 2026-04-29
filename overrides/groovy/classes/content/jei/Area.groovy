package classes.content.jei

/// used to check if the mouse is within a particular space
class Area {

    final int top
    final int bottom
    final int left
    final int right

    private Area(int top, int bottom, int left, int right) {
        this.top = top
        this.bottom = bottom
        this.left = left
        this.right = right
    }

    /// create an Area from defined coordinates for each side
    public static Area fromSize(int top, int bottom, int left, int right) {
        new Area(top, bottom, left, right)
    }

    /// create an Area from the top left coordinate combined with the width and height
    public static Area fromPoint(int top, int left, int height, int width) {
        new Area(top, top + height, left, left + width)
    }

    /// is the mouse coordinates are over the Area
    boolean isHovered(int mouseX, int mouseY) {
        return !(mouseY < top || mouseY > bottom || mouseX < left || mouseX > right)
    }

}
